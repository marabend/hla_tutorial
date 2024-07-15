// Program that demonstrates the implementation of 
// the cs.charToCset  function

program cscharToCset;
#include("stdlib.hhf")

static
	csetDest: cset;
	chrValue: char := 'a';
	
begin cscharToCset;
	
	// Begin by creating an empty set.
	
	mov(0, eax);
	mov(eax, (type dword csetDest));
	mov(eax, (type dword csetDest[4]));
	mov(eax, (type dword csetDest[8]));
	mov(eax, (type dword csetDest[12]));
	
	// use the BTS instruction to set the specified bit in the
	// character set.
	
	movzx(chrValue, eax);
	bts(eax, csetDest);
	
	stdout.put("Singleton set = {", csetDest, "}" nl);
	
end cscharToCset;
