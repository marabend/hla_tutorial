program fib;
#include ("stdlib.hhf");

static
	FibCntr: 	int32;
	CurFib:		int32;
	LastFib:	int32;
	TwoFibsAgo:	int32;
	
begin fib;
	
	// Some simple initialization:
	
	mov(1, LastFib);
	mov(1, TwoFibsAgo);
	
	// Print fib(1) and fib(2) as a special case:
	
	stdout.put
		(
			"fib( 1) =	1", nl
			"fib( 2) = 	1", nl
		);
		
		// Use a loop to compute the remaining fib values:
		
		mov(3, FibCntr);
		
		while(FibCntr <= 40) do
			
			// Get the last two computed fibonocci values
			// and add them together:
			
			mov( LastFib, ebx);
			mov( TwoFibsAgo, eax);
			add( ebx, eax);
			
			// Save the result and print it:
			
			mov(eax, CurFib);
			stdout.put("fib(",FibCntr:2, ") = ", CurFib:10, nl);
			
			// Recycle current LastFib (in ebx) as TwoFibsAgo and recycle CurFib as LastFib.
			
			mov( eax, LastFib);
			mov( ebx, TwoFibsAgo);
			
			// Bump up our loop counter;
			
			add(1, FibCntr);
		endwhile;
	end fib;
	
