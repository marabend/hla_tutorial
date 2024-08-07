// Program to demonstrate stralloc and stdin.gets.

program strallocDemo;
#include ("stdlib.hhf");

static
	theString:string;
	
begin strallocDemo;
	stralloc(16); // Allocate storage for the string and store
	mov(eax, theString); // the pointer into the string variable
	
	// Prompt the user and read the string from the user:
	
	stdout.put("Enter a line of text (16 chars, max): ");
	stdin.flushInput();
	stdin.gets( theString );
	
	// Echo the string back to the user
	stdout.put("The string you entered was: ", theString, nl);
	
end strallocDemo;
