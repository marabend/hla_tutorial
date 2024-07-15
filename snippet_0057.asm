// Program that demonstrates the implementation of 
// the cs.strToCset function

program csStrToCset;
#include("stdlib.hhf");

static
	StrToAdd: string := "Hello_World";
	csetDest: cset;
begin csStrToCset;

	// Begin by creating the empty set
	
	mov(0, eax);
	mov(eax, (type dword csetDest));
	mov(eax, (type dword csetDest[4]));
	mov(eax, (type dword csetDest[8]));
	mov(eax, (type dword csetDest[12]));
	
	// For each character in the source string, add the character to the set.
	
	mov(StrToAdd, eax);
	
	while((type char[eax]) <> #0) do // While not at end of string
		movzx((type char[eax]), ebx);
		bts(ebx, csetDest);
		inc(eax);
	endwhile;
	stdout.put("Final set = {", cSetDest, "}" nl);
	
end csStrToCset;
