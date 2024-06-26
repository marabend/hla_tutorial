program intInput;

#include("stdlib.hhf");

var
	i8: 	int8;
	i16:	int16;
	i32:	int32;
	
begin intInput;
	
	// Read integers of varying sizes from the user:
		
	stdout.put("Enter a small integer between -128 and +127: ");
	stdin.geti8();
	mov(al, i8);
	
	stdout.put("Enter a small integer between -32768 and +32767: ");
	stdin.geti16();
	mov(ax, i16);
	
	stdout.put("Enter an integer between +/- 2 billion: ");
	stdin.geti32();
	mov(eax, i32);
	
	// Display the input values.
	
	stdout.put
	(
		nl,
		"Here are the numbers you entered: ", nl, nl,
		"Eight-bit integer: ", i8:12, nl,
		"16-bit integer: ", i16:12, nl,
		"32-bit integer: ", i32:12, nl
	);
	
	end intInput;
