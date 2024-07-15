// Program that demonstrates the implementation of the cs.unionStr function.

program csUnionStr;
#include("stdlib.hhf")

static
	StrToAdd: string := "Hello_World"; 
	csetDest: cset := {'0'..'9'};
begin csUnionStr;

	// For each character in the source string, add that character to the set.
	
	mov(StrToAdd, eax);
	while((type char[eax]) <> #0) do // While not at end of string.
		movzx((type char[eax]), ebx);
		bts(ebx, csetDest);
		inc(eax);
	endwhile;
	stdout.put("Final set = {", csetDest, "}" nl);
	
end csUnionStr;
