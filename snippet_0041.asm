// Program to demonstate use of lack of type checking in pointer access.

program BadTypePtrDemo;
#include ("stdlib.hhf");

static
	ptr: pointer to char;
	cnt: uns32;

begin BadTypePtrDemo;
	// Allocate sufficient characters to hold a line of text input by the user
	
	malloc(256);
	mov(eax ,ptr);
	
	// read in some text
	stdout.put("Enter a line of text: ");
	stdin.flushInput();
	
	mov(0, cnt);
	mov(ptr, ebx);
	
	repeat
		stdin.getc(); 	// Read a character from the user.
		mov(al, [ebx]);	// Store the character away.
		inc(cnt);		// Bump up count of characters
		inc(ebx);		// Point at next position in memory
	until(stdin.eoln());
	
	// display the data
	mov(ptr, ebx);
	for(mov(cnt, ecx); ecx > 0; dec(ecx)) do
		mov([ebx], eax);
		stdout.put("Current value is $", eax, nl);
		inc(ebx);
	endfor;
	free(ptr);

end BadTypePtrDemo;
