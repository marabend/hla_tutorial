program BoundDemo;

#include ("stdlib.hhf");

static
	InputValue:int32;
	GoodInput:boolean;
	
begin BoundDemo;
	// Repeat until the user enters a good value:
	repeat
		// Assume the user enters a bad value.
		mov (false, GoodInput);
	
	// Catch bad numeric input via the try..endtry statement
	
	try
		stdout.put("Enter an integer between 1 and 10: ");
		stdin.flushInput();
		stdin.geti32();
		
		mov(eax, InputValue);
		
		// Use the BOUND instruction to verify that the 
		// value is in the range 1..10
		
		bound(eax, 1, 10);
		
		mov(true, GoodInput);
		
		// Handle inputs that are not legal integers.
		
		exception(ex.ConversionError)
		stdout.put("Illegal numeric format, reenter", nl);
		
		// Handle integer inputs that don't fit into an int32.
		
		endtry;
		
		until(GoodInput);
		stdout.put("The value you entered, ", InputValue, " is valid.", nl);
		
		end BoundDemo;
