// Program that demonstrates the implementation of the cs.eq and cs.ne functions

program cseqne;
#include("stdlib.hhf")

static
	csetSrc1: cset := {'a'..'z'};
	csetSrc2: cset := {'a'..'z'};
	csetSrc3: cset := {'A'..'Z'};
	
begin cseqne;
	
	// To see if a set equal to another, check to make sure
	// all four dwords are equal. One sneaky way to do this is
	// to use the XOR operator (XOR is "not equals")
	
	mov((type dword csetSrc1[0]), eax); // Set Eax to zero if these 
	xor((type dword csetSrc2[0]), eax); // two dwords are equal
	mov(eax, ebx); // Accumulate result here.
	
	mov((type dword csetSrc1[4]), eax);
	xor((type dword csetSrc2[4]), eax);
	or(eax, ebx);
	
	mov((type dword csetSrc1[8]), eax);
	xor((type dword csetSrc2[8]), eax);
	or(eax, ebx);
	
	mov((type dword csetSrc1[12]), eax);
	xor((type dword csetSrc2[12]), eax);
	or(eax, ebx);
	
	// At this point, EBX is zero if the two csets are equal
	// also the zero flag is set if they are equal
	
	if(@z) then
		stdout.put("csetSrc1 is equal to csetSrc2" nl);
	else
		stdout.put("csetSrc1 is not equal to csetSrc2" nl);
	endif;
	
	// Implementation of cs.ne;
	
	mov((type dword csetSrc1[0]), eax);
	xor((type dword csetSrc3[0]), eax);
	mov(eax, ebx);
	
	mov((type dword csetSrc1[4]), eax);
	xor((type dword csetSrc3[4]), eax);
	or(eax, ebx);
	
	mov((type dword csetSrc1[8]), eax);
	xor((type dword csetSrc3[8]), eax);
	or(eax, ebx);		
	
	mov((type dword csetSrc1[12]), eax);
	xor((type dword csetSrc3[12]), eax);
	or(eax, ebx);
	
	// At this point, EBX is non-zero if the two csets are not equal
	// also, the zero flag is clear if they are not equal
	
	if(@z) then
		stdout.put("csetSrc1 is not equal to csetSrc3" nl);
	else
		stdout.put("csetSrc1 is equal to csetSrc3" nl);
	endif;
end cseqne;
