program PtrConstDemo;

#include ("stdlib.hhf");

static
	b: byte := 0;
	    byte 1,2,3,4,5,6,7;

const
	pb:= &b + 3;

begin PtrConstDemo;
	mov(pb, ebx);
	mov([ebx], al);
	stdout.put("Value at address pb = $", al, nl);
	
end PtrConstDemo;
