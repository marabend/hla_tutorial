program DemoMOVaddSUB;

#include ("stdlib.hhf");

static
i : int8;
	
begin DemoMOVaddSUB;

	mov(10, ecx);
	
	repeat
		stdout.put("ecx = ", ecx, nl);
		sub(1, ecx);
	until(ecx = 0);
	
end DemoMOVaddSUB;
