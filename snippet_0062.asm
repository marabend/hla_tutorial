// Program that demonstrates the implementation of 
// the cs.IisEmpty function

program csIsEmpty;
#include("stdlib.hhf")

static
	csetSrc1: cset := {};
	csetSrc2: cset := {'A'..'Z'};
	
begin csIsEmpty;
	// to see if a set is empty, simply or all the dwords
	// together and see if the result is zero.
	
	mov((type dword csetSrc1[0]), eax);
	or((type dword csetSrc1[4]), eax);
	or((type dword csetSrc1[8]), eax);
	or((type dword csetSrc1[12]), eax);
	
	if(@z) then
		stdout.put("csetSrc1 is empty ({", csetSrc1, "})" nl);
	else
		stdout.put("csetSrc1 is not empty ({", csetSrc1, "})" nl);
	endif;
	
	// Repeat the test for csetSrc2:
	mov((type dword csetSrc2[0]), eax);
	or((type dword csetSrc2[4]), eax);
	or((type dword csetSrc2[8]), eax);
	or((type dword csetSrc2[12]), eax);
	
	if(@z) then
		stdout.put("csetSrc2 is empty ({", csetSrc2, "})" nl);
	else
		stdout.put("csetSrc2 is not empty ({", csetSrc2, "})" nl);
	endif;
	
end csIsEmpty;
