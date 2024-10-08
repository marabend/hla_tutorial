program demoGlobalScope;

#include ("stdlib.hhf");

static
	AccessibleInProc: char;
	
	procedure aProc;
	begin aProc;
		mov('a', AccessibleInProc);
	end aProc;
	
static
	InaccessibleInProc: char;
	
begin demoGlobalScope;
	
	mov('b', InaccessibleInProc);
	aProc();
	stdout.put
		( 
			"AccessibleInProc = '", AccessibleInProc, "'" nl
			"InaccessibleInProc = '", InaccessibleInProc, "'" nl
		);

end demoGlobalScope;
