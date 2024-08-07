	// Program to demonstrate str.cat and str.a_cat.
	
	program strcatDemo;
	#include ("stdlib.hhf");
	
	static
		UserName: string;
		Hello: string;
		a_Hello: string;
		
	begin strcatDemo;
		// Allocate storage for the concatenated result:
		
		stralloc(1024);
		mov(eax, Hello);
		
		// Get some user input to user in this example:
		
		stdout.put("Enter your name: "); 
		stdin.flushInput();
		stdin.a_gets();
		mov(eax, UserName); 
		
		// Use str.cat to combine the two strings:
		
		str.cpy("Hello ", Hello);
		str.cat(UserName, Hello);
		
		// Use str.a_cat to combine the strings
		str.a_cat("Hello ", UserName);
		mov(eax, a_Hello);
		
		stdout.put("Concatenated string #1 is '", Hello, "'" nl);
		stdout.put("Concatenated string #2 is '", a_Hello, "'" nl);
		
		strfree(UserName);
		strfree(a_Hello);
		strfree(Hello);
		
	end strcatDemo;
