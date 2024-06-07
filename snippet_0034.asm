program testGotoxy;
#include ("stdlib.hhf");

var
	x:dword; //error in book, before int16 for both variables
	y:dword;
	
begin testGotoxy;
	// Throw up some text to prove that
	// this program really clears the screen
	
	stdout.put
		(
			nl,
			"HLA console.gotoxy() Test Routine", nl,
			"-------------------------------", nl,
			nl,
			"This routine will clear the screen then demonstrate the use", nl,
			"of the gotoxy routine to position the cursor at various", nl,
			"points on the screen.", nl,
			nl,
			"Press the Enter key to continue:"
		);
	
	// Make the user hit Enter to continue. This is so that they 
	// can control when they see the effect of console.gotoxy
	
	stdin.readLn();
	
	// clear the screen
	console.cls();
	
	// Now demonstrate the gotoxy routine:
	console.gotoxy(5,10);
	stdout.put( "(5,10)");
	
	console.gotoxy(10, 5);
	stdout.put( "(10,5)" );
	
	mov(20, x);
	for(mov(0,y); y<20; inc(y)) do
		console.gotoxy( y, x);
		stdout.put( "(", x, ",", y, ")");
		inc(x);
	endfor;
end testGotoxy;
