program testRandom;

// Does not compile

#include ("stdlib.hhf");

begin testRandom;
	
	console.cls();
	mov(10_000, ecx);
	repeat
		// Generate a random X-coordinate
		// using rand.range
		
		rand.range(0,79);
		mov(eax, ebx); // Save the X-coordinate for now.
		
		// Generate a random Y-coordinate
		// using rand.urange
		
		rand.urange(0,23);
		
		// Print an asterisk at the specified coordinate on the screen.
		
		stdout.put(ax, bx, "*");
		
		// Repeat this 10.000 times to get a good distribution of values.
		
		dec(ecx);
	until(ecx);
	
	until(@z);
	
	// Position the cursor at the bottom of the screen so we can observe the results
	console.gotoxy(24,0);
	
end testRandom;
