program VALdemo;
#include ("stdlib.hhf");

val
	NotSoConstant := 0;
	
begin VALdemo;
	
	mov(NotSoConstant, eax);
	stdout.put("EAX = ", (type uns32 eax), nl);
	
	?NotSoConstant := 10;
	mov(NotSoConstant, eax);
	stdout.put("EAX = ", (type uns32 eax), nl);
	
	?NotSoConstant := 20;
	mov(NotSoConstant, eax);
	stdout.put("EAX = ", (type uns32 eax), nl);
	
	?NotSoConstant := 30;
	mov(NotSoConstant, eax);
	stdout.put("EAX = ", (type uns32 eax), nl);
	
end VALdemo;
