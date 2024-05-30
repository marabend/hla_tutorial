program charInput;

#include("stdlib.hhf");

var
	counter: int32;

begin charInput;

	// The following repeats as long as the user confirms the repetition
	
	repeat
		
		// Print out 14 values.
		
		mov(14, counter);
		while( counter > 0) do
			stdout.put(counter:3);
			sub( 1, counter );
		endwhile;
		
		// Wait until the user enters 'y' or 'n'.
		
		stdout.put(nl, nl, "Do you wish to see it again? (y/n): ");
		
		forever
			stdin.readLn();
			stdin.getc();
			breakif(al = 'n');
			breakif(al = 'y');
			stdout.put("Error, please enter only 'y' or 'n' : ");
		endfor;
		stdout.newln();
		
	until (al = 'n');
end charInput;
