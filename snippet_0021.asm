program HexIO;

#include ("stdlib.hhf");

static
	i32: int32;
	
begin HexIO;
	stdout.put( "Enter a hexadecimal value: ");
	stdin.geth32(); 
	mov(eax, i32);
	stdout.put(" The value you entered was $");
	stdout.putd( i32 );
	stdout.newln();
end HexIO;
