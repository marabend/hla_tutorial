program DemoMOVaddSUB;

#include ("stdlib.hhf");

static
	i8:	 int8  := -8;
	i16: int16 := -16;
	i32: int32 := -32;
	
begin DemoMOVaddSUB;
	// First, print the initial values of our variables
	
	stdout.put
	(
		nl,
		"Initialized values: i8=", i8,
		", i16=", i16,
		", i32=", i32,
		nl
	);
	
	// Compute the absolute value of the three different variables and print the result.
	// Note, since all the numbers are negative, we have to negate them.
	// Using only the MOV, ADD, and SUB instruction, we can negate a value by subtracting it from zero
	
	mov(0, al);	// Compute i8 := -i8;
	sub(i8, al);
	mov(al, i8);
	
	mov(0, ax);	// Compute i16 := -i16;
	sub(i16, ax);
	mov(ax, i16);
	
	mov(0, eax);	// Compute i32 := -i32;
	sub(i32, eax);
	mov(eax, i32);
	
	// Display the absolute values:
	
	stdout.put
	(
		nl,
		"After negation: i8=", i8,
		", i16=", i16,
		", i32=", i32,
		nl
	);
	
	// Demonstrates ADD and constant-to-memory operations
	add(32323200, i32);
	stdout.put(nl, "After ADD: i32=", i32, nl);
	
end DemoMOVaddSUB;
