
// This sample program demonstrates how to use the FPU to create
// a simple RPN calculator.
// This program reads a string from the user and "parses" that string to
// figure out the calculation the user is requesting.
// This program assumes that any item beginning with a numeric
// digit is a numeric operand to push onto the FPU stack and all other items
// are operators.

// Examples of typical user input:
// calc 123.45 67.90 +

// The program iresponds by printing
// Result = 1.913400000000000e+2

// Current operators supported:
// + - * /

// Current functions supported

// sin sqrt

program RPNcalculator;

#include ("stdlib.hhf")

static
	argc: uns32;
	curOperand: string;
	ItemsOnStk: uns32;
	realRslt: real80;
	
	// The following function converts an angle (in ST0) from degrees to radians.
	// It leaves the result in ST0.
	
	procedure DegreesToRadians;  @nodisplay;
	begin DegreesToRadians;
		fld(2.0); // Radians = degreees * 2 * pi/360.0
		fmul();
		fldpi();
		fmul();
		fld(360.0);
		fdiv();
	end DegreesToRadians;
	
begin RPNcalculator;
	
	// Initialize the FPU.
	finit();
	
	// Okay, extract the items from the Windows CMD.exe command line and process them.
	
	arg.c();
	
	if(eax <= 1) then
		stdout.put("Usage: 'rpnCalc <rpn expression>'" nl);
		exit RPNcalculator;
	endif;
	
	// ECX holds the index of the current operand.
	// ItemsOnStk keeps track of the number of numeric operands
	// pushed onto the FPU stack so we can ensure that each operation has the appropriate number of operands.
	
	mov(eax, argc);
	mov(1, ecx);
	mov(0, ItemsOnStk);
	
	// The following loop repeats once for each item on the command line:
	
	while(ecx < argc) do
		// Get the string associated with the current item:
		arg.v(ecx); // Note that this malloc's storage!
		mov(eax, curOperand);
		
		// If the operand begins with a numeric digit, assume that it's a
		// floating point number.
		
		if((type char [eax]) in '0'..'9') then
			try
				// Convert this string representation of a numeric value
				// to the equivalent real value. Leave the result on the top of the FPU Stack.
				// Also, bump ItemsOnStk up by one since we're pushing a new item onto the FPU stack.
				
				conv.strToFlt(curOperand, 0);
				inc(ItemsOnStk);
				
				exception(ex.ConversionError)
					stdout.put("Illegal floating constant" nl);
					exit RPNcalculator;
				anyexception
					
					stdout.put
					(
						"Exception ",
						(type uns32 eax),
						"while converting real constant"
						nl
					);
					exit RPNcalculator;
				endtry;
				
			// Handle the addition operation here.
			
			elseif(str.eq(curOperand, "+")) then
				// the addition operation requires two operands
				// on the stack. Ensure we have two operands before proceeding.
				
				if(ItemsOnStk >= 2) then
					fadd();
					dec(ItemsOnStk); // fadd() removes one operand
				else
					stdout.put("'+' operation requires two operands." nl);
					exit RPNcalculator;
				endif;
				
			// Handle the subtraction operation here. See the comments for FADD for more details
			
			elseif(str.eq(curOperand, "-")) then
				if(ItemsOnStk >= 2) then
					fsub();
					dec(ItemsOnStk);
				else
					stdout.put("'-' operation requires two operands." nl);
					exit RPNcalculator;
				endif;
				
				// Handle the multiplication operation here. See the comments for FADD for more details.
				
				elseif(str.eq(curOperand, "*")) then
					if(ItemsOnStk >= 2) then
						fmul();
						dec(ItemsOnStk);
					else
						stdout.put("'*' operation requires two operands." nl);
					exit RPNcalculator;
				endif;
				
			// Handle the division operation here. See the comments for FADD for more details.
			elseif(str.eq(curOperand, "/")) then
				if(ItemsOnStk >= 2) then
					fdiv();
					dec(ItemsOnStk);
				else
					stdout.put("'/'operation requires two operands." nl);
					exit RPNcalculator;
				endif;
			
			// Provide a square root operation here.
			elseif(str.eq(curOperand, "sqrt")) then
				// Sqrt is a monadic (unary) function. Therefore
				// we only require a single item on the stack.
				
				if(ItemsOnStk >= 1) then
					fsqrt();
				else
					stdout.put
						(
							"SQRT function requires at least one operand."
							nl
						);
						exit RPNcalculator;
				endif;
			// Provide the SINE function here. See SQRT comments for details
			
			elseif(str.eq(curOperand, "sin")) then
				if(ItemsOnStk >= 1) then
					DegreesToRadians();
					fsin();
				else
					stdout.put("SIN function requires at least one operand." nl);
					exit RPNcalculator;
				endif;
			else
				stdout.put("'", curOperand, "' is a unknown operation." nl);
				exit RPNcalculator;
			endif;
			
			// Free the storage associated with the current item.
			strfree(curOperand);
			
			// Move on to the next item on the command line:
			inc(ecx);
			
		endwhile;
		
		if(ItemsOnStk = 1) then
			fstp(realRslt);
			stdout.put("Result = ", realRslt, nl);
		else
			stdout.put("Syntax error in expression. ItemsOnStk=", ItemsOnStk, nl);
		endif;
	end RPNcalculator;
	
