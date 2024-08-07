program StrDemo;
#include ("stdlib.hhf");

static
	theString:string := "String of length 19";
	
begin StrDemo;
	
	mov(theString, ebx); // Get pointer to the string.
	
	mov( [ebx-4], eax);	// Get current length
	mov( [ebx-8], ecx);	// Get maximum  length
	
	stdout.put
	(
		"theString = '", theString, "'", nl,
		"length( theString )=", (type uns32 eax), nl,
		"maxLength (theString) = ", (type uns32 ecx), nl
	);
	
end StrDemo;
