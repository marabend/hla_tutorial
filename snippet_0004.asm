program DemoMOVaddSUB;

#include ("stdlib.hhf");
	
begin DemoMOVaddSUB;

	mov(1, eax);
	
	if(eax = 1) then
		stdout.put("EAX is one");
	endif;
	
	
end DemoMOVaddSUB;
