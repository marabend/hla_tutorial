// Program that demonstrates the implementation of the
// cs.unionChar  function.

program csUnionChar;
#include("stdlib.hhf");

static
	csetDest: cset := {'0'..'9'};
	chrValue: char := 'a';
	
begin csUnionChar;
	
	// use the BTS instruction to add the specified bit to the character set
	
	movzx(chrValue, eax);
	bts(eax, csetDest);
	
	stdout.put("New set = {", csetDest, "}" nl);
	
end csUnionChar;
