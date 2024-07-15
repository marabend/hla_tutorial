// Program that demonstrates the implementation of the
// cs.removeChar function 

program csRemoveChar;
#include ("stdlib.hhf")

static
	csetDest: cset := {'0'..'9'};
	chrVal1: char := '0';
	chrVal2: char := 'a';
	
begin csRemoveChar;

	// use the BTS instruction to remove the specified bit from the character set.
	
	movzx(chrVal1, eax);
	btr(eax, csetDest);
	
	stdout.put("Set w/o '0' = {", csetDest, "}" nl);
	
	// Now remove a character not in the set to demonstrate that
	// removal of a non-existant character doesn't affect the set.
	
	movzx(chrVal2, eax);
	btr(eax, csetDest);
	stdout.put("Final set = {", csetDest, "}" nl);
	
end csRemoveChar;
