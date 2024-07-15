// Program that demonstrates the implementation of
// the cs.intersection function.

program csIntersection;
#include("stdlib.hhf")

static
	csetSrc1: cset := {'a'..'z'};
	csetSrc2: cset := {'A'..'z'};
	csetDest: cset;

begin csIntersection;
	
	// To compute the intersection of csetSrc1 and csetSrc2 all we have 
	// to do is logically AND the two sets together.
	
	mov((type dword csetSrc1), eax);
	and((type dword csetSrc2), eax);
	mov(eax, (type dword csetDest));
	
	mov((type dword csetSrc1[4]), eax);
	and((type dword csetSrc2[4]), eax);
	mov(eax, (type dword csetDest[4]));
	
	mov((type dword csetSrc1[8]), eax);
	and((type dword csetSrc2[8]), eax);
	mov(eax, (type dword csetDest[8]));
	
	mov((type dword csetSrc1[12]), eax);
	and((type dword csetSrc2[12]), eax);
	mov(eax, (type dword csetDest[12]));
	
	stdout.put(" Set A = {", csetSrc1, "}" nl);
	stdout.put(" Set B = {", csetSrc2, "}" nl);
	stdout.put("Intersection of A and B = {", csetDest, "}" nl);

end csIntersection;
	
	
