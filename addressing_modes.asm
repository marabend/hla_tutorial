program addressingmodes;

#include ("stdlib.hhf");

var
	myVar: int8;

begin addressingmodes;

	// addressing modes

	// Must have the same size
	mov (bx, ax);
	mov (al, dl);
	mov( edx, esi); 
	mov (bp, sp);
	mov(cl, dh);
	mov(ax, ax); // this is legal!!!

	mov(0, al);
	// displacement-only / direct addressing mode
	mov(al, myVar);
	mov(myVar, al);
	
	// Register indirect Addressing Modes
	// Requires 32-bit register!!!
	mov(eax, [ebx]); // Store the value in eax in memory location (value of ebx)
	mov([eax], al);
	mov([ebx], al);
	mov([ecx], al);
	mov([edx], al);
	mov([edi], al);
	mov([esi], al);
	mov([ebp], al);
	mov([esp], al);
	
	// mov($1234_5678, ebx);
	// mov([ebx], al); Attempts to access location $1234_5678
	
	mov(&myVar, ebx);	// Load address of myVar into ebx.
	mov(eax, [ebx]);	// Store EAX into J.
	
	// Indexed Addressing Modes
	// The indexed addressing mode computes an effective address by adding the address of the specified variable to the value of the 32-bit register
	// appearing inside the square brackets
	mov(myVar[eax], al);
	mov(myVar[ebx], al);
	mov(myVar[ecx], al);
	mov(myVar[edx], al);
	mov(myVar[edi], al);
	mov(myVar[esi], al);
	mov(myVar[ebp], al);
	mov(myVar[esp], al);
	
	mov([ebx + 4], al);
	mov([ebx - 4], al);
	
	// or
	mov(myVar[ebx + 4], al);
	mov(myVar[ebx - 4], al);
	
	// Scaled Indexed Addressing Modes (useful for access elements of an array 
	mov(myVar[ebx + esi * 4  4], al);
	
end addressingmodes;
