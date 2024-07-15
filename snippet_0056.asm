// Program that demonstrates the implementation of
// the cs.rangeChar function

program csRangeChar;
#include("stdlib.hhf");

static
	csetDest: cset;
	startRange: char := 'a';
	endRange: char := 'z';
begin csRangeChar;

	// Begin by creating the empty set:
	
	mov(0, eax);
	mov(eax, (type dword csetDest));
	mov(eax, (type dword csetDest[4]));
	mov(eax, (type dword csetDest[8]));
	mov(eax, (type dword csetDest[12]));
	
	// Run the following loop for each character between
	// 'startRange' and 'endRange' and set the corresponding
	// bit in the cset for each character in the range
	
	movzx(startRange, eax);
	while(al <= endRange) do
		bts(eax, csetDest);
		inc(al);
	
	endwhile;
		stdout.put("Final set = {", csetDest, "}" nl);
	
	end csRangeChar;
