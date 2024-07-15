// Program that demonstrates the implementation of the cs.empty function.

program csCpy;
#include("stdlib.hhf")

static
	csetDest: cset;
	csetSrc: cset := {'a'..'z', 'A'..'Z'};
	
begin csCpy;
	
	// How to create an empty set (cs.empty)
	// (Zero out all bits in the cset)
	
	mov((type dword csetSrc), eax);
	mov(eax, (type dword csetDest));
	
	mov((type dword csetSrc[4]), eax);
	mov(eax, (type dword csetDest[4]));
	
	mov((type dword csetSrc[8]), eax);
	mov(eax, (type dword csetDest[8]));
	
	mov((type dword csetSrc[12]), eax);
	mov(eax, (type dword csetDest[12]));
	
	stdout.put("Copied set = {", csetDest, "\" nl);
	
end csCpy;
