// Program to demonstrate string assignment using str.a_cpy.

program stra_copyDemo;
#include ("stdlib.hhf");

static
	string1: string;
	string2: string;

begin stra_cpyDemo;

	// Get a value into string1
	
	forever
		stdout.put("Enter a string with at least three characters: ");
		stdin.a_gets();
		mov(eax, string1);
		
		breakif( (type str.strRec [eax]).length >= 3);
		stdout.put("Please enter a string with at least three chars." nl);
	endfor;
	
	// Do the string assignment via str.a_cpy
	
	str.a_cpy(string1);
	mov(eax, string2);
	
	stdout.put("String1= '", string1, "'" nl);
	stdout.put("String2='", string2, "'" nl);
	
	// modify the data in string1 by overwriting
	// the first three characters of the string 
	
	mov( string1, ebx);
	mov('a', (type char [ebx]));
	mov('b', (type char [ebx+1]));
	mov('c', (type char [ebx+2]));
	
	// demonstrate that we have two different strings
	
	stdout.put
		(
			"After assigning 'abc' to the first three characters in string1:"
			nl
			nl
		);
	
	stdout.put("String1= '", string1, "'" nl);
	stdout.put("String2='", string2, "'" nl);
	
	// Note that we have to free the data associated with both 
	// strings since they are not aliases of one another.
	
	strfree(string1);
	strfree(string2);
	
end stra_cpyDemo;
