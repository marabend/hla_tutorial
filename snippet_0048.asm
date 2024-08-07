// Program to demonstrate string assignment using str.cpy.

program strcpyDemo;
#include("stdlib.hhf");

static
	string1: string;
	string2: string;
	
begin strcpyDemo;
	
	// Allocate storage for string2:
	
	stralloc(64);
	mov(eax, string2);
	
	// Get a value into string1
	
	forever
		stdout.put("Enter a string with at least three characters: ");
		stdin.a_gets();
		mov(eax, string1);
		
		breakif( (type str.strRec [eax]).length >= 3);
		
		stdout.put("Please enter a string with at least three chars." nl);
	endfor;
	
	// Do the string assignment via str.cpy
	
	str.cpy(string1, string2);
	
	stdout.put("String1= '", string1, "'" nl);
	stdout.put("String2= '", string2, "'", nl);
	
	mov(string1, ebx);
	mov('a', (type char [ebx]));
	mov('b', (type char [ebx+1]));
	mov('c', (type char [ebx+2]));
	
	// demonstrate that we have two different strings
	// since we used str.cpy to copy the data:
	
	stdout.put
		(
			"After assigning 'abc' to the first three characters in string1:"
			nl
			nl
		);
		
	stdout.put("String1 = '", string1, "'" nl);
	stdout.put("String2 = '", string2, "'" nl);
	
	// Note that we have to free the data associated with both
	// strings since they are not aliases of one another.
	
	strfree(string1);
	strfree(string2);

end strcpyDemo;
