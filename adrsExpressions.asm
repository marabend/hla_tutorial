program adrsExpressions;

#include ("stdlib.hhf");

static
	i: int8; @nostorage
	byte 0,1,2,3;

begin adrsExpressions;
	stdout.put
		(
			"i[0]=", i[0], nl,
			"i[1]=", i[1], nl,
			"i[2]=", i[2], nl,
			"i[3]=", i[3], nl
		);
		
end adrsExpressions;
