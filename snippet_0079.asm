program callerPreservation2;
#include ("stdlib.hhf");

	procedure PrintSpaces;
	begin PrintSpaces;
		mov(40, ecx);
		repeat
			stdout.put(' '); // Print 1 of 40 spaces
			dec(ecx);
		until(ecx = 0);
	end PrintSpaces;
	
begin callerPreservation2;
	stdout.put("callerPreservation2");
	mov(10, ecx);
	repeat
		push(ecx);
		PrintSpaces();
		pop(ecx);
		stdout.put('*', nl);
		dec(ecx);
	until (ecx = 0);
	
	mov(5, ebx);
	while(ebx > 0) do
		PrintSpaces();
		stdout.put(ebx, nl);
		dec(ebx);
	endwhile;
	
	mov(110, ecx);
	for(mov(0, eax); eax < 7; inc(eax)) do
		PrintSpaces();
		
		stdout.put(eax, " ", ecx, nl);
		dec(ecx);
	endfor;
end callerPreservation2;
