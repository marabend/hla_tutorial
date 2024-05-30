program DemoMOVaddSUB;

#include ("stdlib.hhf");
	
static
GoodInteger : boolean;
i : int8;
	
begin DemoMOVaddSUB;
	repeat
		mov(false, GoodInteger);
		try
			stdout.put("Enter an integer: ");
			stdin.get(i);
			mov(true, GoodInteger);
		exception(ex.ConversionError);
			stdout.put("Illegal numeric value, please re-enter", nl);
		exception(ex.ValueOutOfRange);
			stdout.put("Value is out of range, please re-enter", nl);
		endtry;
	until(GoodInteger);
	
end DemoMOVaddSUB;
