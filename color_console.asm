program testSetOutputAttr;
#include("stdlib.hhf");

var
	x:uns32;
	y:uns32;

begin testSetOutputAttr;
	
	// Clear the screen and paint a banner message:
	console.cls();
	
	console.setAttrs(console.red , console.black);
	
	stdout.put
	(
		nl,
		"HLA console.setOutputAttr Test Routine", nl,
		"------------------------------------------------", nl,
		nl,
		"Press the Enter key to continue:"
	);
	
	// Make the user hit Enter to continue. This 
	
	stdin.readLn();
	
	console.setAttrs(console.yellow, console.blue);
	
	stdout.put
	(
		"			           ", nl
		" In blue and yellow     ", nl,
		"				   ", nl,
		" Press Enter to continue ", nl
		"				  ", nl
		nl
	);
	
	stdin.readLn();
	
	// Note: set the attributes back to black and white when the program exists so the console window doesn't continue
	// displaying text in Blue and Yellow.
	
	console.setAttrs(console.white, console.black);
end testSetOutputAttr;
