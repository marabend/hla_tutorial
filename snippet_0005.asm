program DemoMOVaddSUB;

#include ("stdlib.hhf");
	
begin DemoMOVaddSUB;

	mov(0, eax);
	
	if(eax = 1) then
		stdout.put("EAX is one");
	else
		stdout.put("EAX is not equal to one");
	endif;
	
end DemoMOVaddSUB;
