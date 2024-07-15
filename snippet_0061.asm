// Program that demonstrates the implementation of the cs.difference function.

program csDifference;
#include("stdlib.hhf")

static
	csetSrc1: cset := {'0'..'9', 'a'..'z'};
	csetSrc2: cset := {'A'..'z'};
	csetDest: cset;
	
begin csDifference;
	// To compute the difference of csetSrc1 and csetSrc2 all we have to do
	// is logically AND A and NOT B together
	mov((type dword csetSrc2), eax);
	not(eax);
	and((type dword csetSrc1), eax);
	mov(eax, (type dword csetDest));
	
	mov((type dword csetSrc2[4]), eax);
	not(eax);
	and((type dword csetSrc1[4]), eax);
	mov(eax, (type dword csetDest[4]));	
	
	mov((type dword csetSrc2[8]), eax);
	not(eax);
	and((type dword csetSrc1[8]), eax);
	mov(eax, (type dword csetDest[8]));
	
	mov((type dword csetSrc2[12]), eax);
	not(eax);
	and((type dword csetSrc1[12]), eax);
	mov(eax, (type dword csetDest[12]));
	
	stdout.put(" Set A = {", csetSrc1, "}" nl);
	stdout.put(" Set B = {", csetSrc2, "}" nl);
	stdout.put("Difference of A and B = {", csetDest, "}" nl);
	
end csDifference;
	
				
