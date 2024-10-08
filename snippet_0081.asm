program demoLocalVars;

#include ("stdlib.hhf");

// Simple procedure that displays 0..9 using a local variable
// as a loop control variable

procedure CntTo10;

var
	i: int32;

begin CntTo10;
	
	for(mov(0, i); i<10; inc(i)) do
		stdout.put("i=", i, nl);
	endfor;
end CntTo10;

begin demoLocalVars;
	CntTo10();
end demoLocalVars;
