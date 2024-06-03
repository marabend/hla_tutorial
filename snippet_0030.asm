program dataInterpretation;
	#include ("stdlib.hhf");
	
	static
		r: real32 := -1.0;
	
	begin dataInterpretation;
		stdout.put("'r' interpreted as a real 32 value: ", r:5:2, nl);
		
		stdout.put("'r' interpreted as an uns32 value: " );
		
		mov(r, eax);
		stdout.putu32(eax);
		stdout.newln();
		
		stdout.put("'r' interpreted as an int32 value: ");
		mov(r, eax);
		stdout.puti32(eax);
		stdout.newln();
		
		stdout.put("'r' interpreted as a dword value: $");
		mov(r, eax);
		stdout.putd(eax);
		stdout.newln();
		
	end dataInterpretation;
