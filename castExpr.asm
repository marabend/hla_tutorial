program castExpr;

#include("stdlib.hhf");

begin castExpr;

	if(eax < 0) then // will always be false
		stdout.put("Eax is negative!", nl);
	endif; 
	
	if( (type int32 eax) < 0) then
		stdout.put("EAX is negative!", nl);
	endif;

end castExpr;
