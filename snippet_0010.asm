program DemoMOVaddSUB;

#include ("stdlib.hhf");
	
static
i : int8;
	
begin DemoMOVaddSUB;

	mov(0, i);
	
	forever
		stdout.put("Enter an integer less than 10: ");
		stdin.get(i);
		breakif(i < 10);
		stdout.put("The value needs to be less than 10!", nl);
	endfor;
	
end DemoMOVaddSUB;
