program DemoMOVaddSUB;

#include ("stdlib.hhf");

static
b : boolean := true;
	
begin DemoMOVaddSUB;

	mov(0, ecx);
	
	while(b) do
		stdout.put("ecx = ", ecx, nl);
		add(1, ecx);
		breakif(ecx > 10); // Can be used to break within a while loop.
	endwhile;
	
end DemoMOVaddSUB;
