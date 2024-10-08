program PassByRefDemo;

#include("stdlib.hhf");

var
	i: int32;
	j: int32;
	
	procedure pbr(var a:int32; var b:int32);
	const
		aa: text := "(type int 32 [ebx]))";
		bb: text :="(type int 32 [ebx])";
		
	begin pbr;
	
		push(eax);
		push(ebx); // Need to use EBX to dereference a and b.
		
		// a = -1;
		
		mov(a, ebx); // Get ptr to the "a" variable
		mov(-1, a); // Store -1 into the "a" parameter
		
		// b = -2;
		
		mov(b, ebx);	// Get ptr to the "b" variable
		mov(2, b);	// Store -2 into the "b" parameter.
		
		// Print the sum of a + b
		// Note that ebx currently contains a pointer to "b".
		
		mov(b, eax);
		mov(a, ebx);
		add(a, eax);
		stdout.put("a+b=", (type int32 eax), nl);
		
	end pbr;
	
	begin PassByRefDemo;
		// Give i and j some initial values so we cann see that pass by reference will overwrite these values
		mov(50, i);
		mov(25, j);
		
		// Call pbr passing i and j by reference
		
		pbr(i, j);
		
		// Display the results returned by pbr.
		
		stdout.put
			(
				"i= ", i, nl,
				"j= ", j, nl
			);
	end PassByRefDemo;
		
