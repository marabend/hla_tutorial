program eolnDemo2;
	#include ("stdlib.hhf");
	
	begin eolnDemo2;
	
		stdout.put("Enter a short line of text: ");
		stdin.flushInput();
		repeat
			
			stdin.getc();
			stdout.putc(al);
			stdout.put("=$", al, nl);
		
		until( stdin.eoln() );
	end eolnDemo2;
