// Program that demonstrates the implementation of the cs.setunion function.

program cssetUnion;
#include("stdlib.hhf")

static
	csetSrc1: cset := {'a'..'z'};
	csetSrc2: cset := {'A'..'Z'};
	csetDest: cset;
	
begin cssetUnion;
	// To compute the union of csetSrc1 and csetSrc2 all we have to do
	// is logically OR the two sets together
	
	mov((type dword csetSrc1), eax);
	or((type dword csetSrc2), eax);
	mov(eax, (type dword csetDest));
	
	mov((type dword csetSrc1[4]), eax);
	or((type dword csetSrc2[4]), eax);
	mov(eax, (type dword csetDest[4]));
	
	mov((type dword csetSrc1[8]), eax);
	or((type dword csetSrc2[8]), eax);
	mov(eax, (type dword csetDest[8]));
	
	mov((type dword csetSrc1[12]), eax);
	or((type dword csetSrc2[12]), eax);
	mov(eax, (type dword csetDest[12]));
	
	stdout.put("Final set = {", csetDest, "}" nl);
	
end cssetUnion;
	
