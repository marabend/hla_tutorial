program ConvertToDecimal;

#include ("stdlib.hhf");

static
	value: int32;

begin ConvertToDecimal; 

	stdout.put("Input a hexadecimal value: ");
	stdin.get( ebx ); 
	mov(ebx, value);
	stdout.put("The value $", ebx, " converted to decimal is ", value, nl);

end ConvertToDecimal;
