program DemoMOVaddSUB;

#include ("stdlib.hhf");

static
i : int8;
	
begin DemoMOVaddSUB;

	for( mov(0,i); i < 10; add(1, i)) do
		stdout.put("i=", i, nl);
	endfor;
	
end DemoMOVaddSUB;
