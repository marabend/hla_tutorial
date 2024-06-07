program testCls;

#include("stdlib.hhf");

begin testCls;
	// Throw up some text to prove that
	// this program really clears the screen:
	
	stdout.put
		(
			nl,
			"HLA console.cls() Test Routine", nl
			"--------------------------------", nl
			nl
			"This routine will clear the screen and move the cursor to (0,0), ", nl
			"then it will print a short message and quit", nl
			nl
			"Press the Enter key to continue:"
		);
		
		// Make the user hit Enter to conitune; This is so that they
		// can see that the screen is not blank.
		
		stdin.readLn();
		
		// clear the creen and print a simple message:
		console.cls();
		stdout.put("The screen was cleared.", nl);
		end testCls;
