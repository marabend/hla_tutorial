program notWorkingProgram;

#include("stdlib.hhf");

	procedure PrintSpaces;
	begin PrintSpaces;
		mov(40, ecx);
		repeat
			stdout.put(" "); // Print 1 of 40 spaces
			dec(ecx);		// Count off 40 spaces
		until (ecx = 0);
	
	end PrintSpaces;
	
begin notWorkingProgram;
	mov(20, ecx);
	repeat
		PrintSpaces();
		stdout.put("*", nl);
		dec(ecx);
	until (ecx = 0);
end notWorkingProgram;