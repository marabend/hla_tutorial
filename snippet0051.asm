// Program that demonstrates the implementation of the cs.empty function.

program csEmpty;
#include("stdlib.hhf")

static
	csetDest: cset;
	csetSrc: cset := {'a'..'z', 'A'..'Z'};
	
begin csEmpty;
	// How to create an empty set (cs.empty);
	// (Zero out all bits in the cset)
	
	mov(0, eax);
	mov(eax, (type dword csetDest));
	mov(eax, (type dword csetDest[4]));
	mov(eax, (type dword csetDest[8]));
	mov(eax, (type dword csetDest[12]));
	
	stdout.put("Empty set {", csetDest, "}" nl);
	
end csEmpty;
