program LenMaxLenDemo;
#include ("stdlib.hhf");

static
	theString:string := "String of length 19";
	
begin LenMaxLenDemo;
	
	mov(theString, ebx); // Get pointer of the string
	
	mov((type str.strRec[ebx]).length, eax); // Get current length
	mov((type str.strRec[ebx]).MaxStrLen, ecx); // Get maximum  length
	
	stdout.put
	(
		"theString = '", theString, "'", nl,
		"length( theString )= ", (type uns32 eax), nl,
		"maxLength( theString )= ", (type uns32 ecx), nl
	);
end LenMaxLenDemo;
