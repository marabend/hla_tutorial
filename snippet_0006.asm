program DemoMOVaddSUB;

#include ("stdlib.hhf");

static
i : int8;
	
begin DemoMOVaddSUB;

	mov(0, i);
	
	while(i <= 10) do
		stdout.put("i=", i, nl);
		add(1, i);
	endwhile;
	
end DemoMOVaddSUB;
