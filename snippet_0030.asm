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
	
	// stdout.putr80( r:real80; width:uns32; decpts:uns32 );
	// stdout.putr64( r:real64; width:uns32; decpts:uns32 );
	// stdout.putr32( r:real32; width:uns32; decpts:uns32 );
	// stdout.pute80( r:real80; width:uns32 );
	// stdout.pute64( r:real64; width:uns32 );
	// stdout.pute32( r:real32; width:uns32 );
