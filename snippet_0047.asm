// with string assignment by reference.

program strRefAssignDemo;
#include ("stdlib.hhf");

static
	string1: string;
	string2: string;
	
begin strRefAssignDemo;
	
	// Get a value into string1
	
	forever
		stdout.put("Enter a string with at least three characters: ");
		stdin.a_gets();
		mov(eax, string1);
		
		breakif((type str.strRec[eax]).length >= 3);
		stdout.put("Please enter a string with at least three chars." nl);
	endfor;
	
	stdout.put("You entered: '", string1, "'" nl);
	
	// Do the string assignment by copying the pointer
	
	mov(string1, ebx);
	mov(ebx, string2);
	
	stdout.put("String1= '", string1, "'" nl);
	stdout.put("String2='", string2, "'", nl);
	
	// modify the data in string1 by overwriting
	// the first three characters of the string
	// Note: a string pointer always points at the first character position
	// in the string and we know we've got at least three characters here).
	
	mov('a', (type char[ebx]));
	mov('b', (type char [ebx+1]));
	mov('c', (type char [ebx+2]));
	
	// demonstrate the problem with assignment via
	// pointer copy
	
	stdout.put
		("After assigning 'abc' to the first three characters in string1:"
		nl
		nl
	);
	
	stdout.put("String1= '", string1, "'" nl);
	stdout.put("String2='", string2, "'" nl);
	
	strfree(string1); // Don't free string2 as well!
end strRefAssignDemo;
