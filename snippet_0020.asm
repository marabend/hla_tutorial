program ConvertToDecimal2;

#include ("stdlib.hhf");

begin ConvertToDecimal2;
	stdout.put("Input a hexadecimal value : ");
	stdin.get( ebx );
	stdout.put( "The value $", ebx, " converted to decimal is ");
	stdout.puti32( ebx );
	stdout.newln();
end ConvertToDecimal2;
