program zeroBytesDemo;

#include ("stdlib.hhf");

procedure zeroBytes;
begin zeroBytes;

	mov(0, eax);
	mov(256, ecx);
	repeat
		mov(eax, [ebx]) ; // Zero out current dword
		add(4, ebx);	   // Point ebx at next dword
		dec(ecx);
	until(ecx = 0);		// Repeat for 256 dwords.
	
end zeroBytes;

static
	dwArray: dword[256];
	
begin zeroBytesDemo;
	lea(ebx, dwArray);
	call zeroBytes;
	
end zeroBytesDemo;
