// Program to demonstate use of an 
// unitialized pointer. Note that this program
// should terminate with a Memory Access Violation exception.

program UninitPtrDemo;
#include ("stdlib.hhf");

static
// Note: by default, variables in the static section are initialized with
// zero (NULL) hence the following is actually intialized with NULL, but that 
// will still cause our program to fail because we haven't initialized
// the pointer with a valid memory address.
Uninitialized: pointer to byte;

begin UninitPtrDemo;

	mov(Uninitialized, ebx);
	mov([ebx], al);
	stdout.put("Value at address Uninitialized: = $", al, nl);
	
end UninitPtrDemo;
