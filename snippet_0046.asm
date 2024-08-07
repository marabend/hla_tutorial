// Program to demonstrate strfree and stdin.a_gets.

program strfreeDemo2;
#include ("stdlib.hhf");

static
	theString:string;
	
begin strfreeDemo2;

	// Prompt the user and read the string from the user
	
	stdout.put("Enter a line of text: ");
	stdin.flushInput();
	stdin.a_gets();
	mov(eax, theString);
	
	// Echo the string back to the user:
	
	stdout.put("The string you entered was : ", theString, nl);
	
	// Free up the storage allocated by stralloc:
	
	strfree(theString);
	
end strfreeDemo2;
