program memalloc;

#include ("stdlib.hhf");

begin memalloc;
	
	// pusha -> gp 16 register (DOS)
	// pushad -> gp 32 register (dword)
	// pushf
	// pushfd
	
	// popa
	// popad
	// popf
	// popfd
	
	malloc(@size(uns32)); // allocate a block of memory by using compile-time function @size
	
	// example how to use the block of memory
	malloc(@size(uns32));
	mov(1234, (type uns32 [eax]));
	
	malloc(@size(char) * 8);
	
	// free up space
	malloc(@size(uns32));
	free(eax);
	
	// intialize a block of memory with NULL
	
	malloc(128);
	
	for(mov(0, ebx); ebx < 128; add(1, ebx)) do
		mov(0, (type byte[eax + ebx]));
	endfor;
	

end memalloc;
