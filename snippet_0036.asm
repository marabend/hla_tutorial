program INTOdemo;
#include ("stdlib.hhf");

static
	LOperand:int8;
	ResultOp:int8;
	
begin INTOdemo;

	// The following try..endtry checks for bad numeric 
	// input and handles the integer overflow check.
	
	try
		// Get the first of two operands:
		
		stdout.put("Enter a small integer value (-128 .. + 127) :");
		stdin.geti8();
		mov(al, LOperand);
		
		// Get the second operand:
		
		stdout.put("Enter a second small integer value (-128..+127): ");
		stdin.geti8();
		
		// Produce their sum and check for overflow:
		
		add(LOperand, al);
		into();
		
		// Display the sum:
		stdout.put("The eight-bit sum is ", (type int8 al), nl);
		
		// Handle bad input here:
		exception(ex.ConversionError)
		
		stdout.put("You entered illegal characters in the number", nl);
		
		// Handle values that don't fit in a byte here.
		exception(ex.ValueOutOfRange)
		
		stdout.put("The value must be in the range -128..+127", nl);
		
		endtry;
		
		end INTOdemo;
