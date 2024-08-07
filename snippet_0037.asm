program ConstDemo;
#include ("stdlib.hhf");

const
	MemToAllocate := 4_000_000;
	NumDWords     := MemToAllocate div 4;
	MisalignBy        := 62;
	
	MainRepetitions := 1000;
	DataRepetitions := 999_900;
	
	CacheLineSize := 16;
	
begin ConstDemo;

	// console.cls();
	stdout.put
		(
			"Memory Alignment Exercise", nl,
			nl,
			"Using a watch (preferably a stopwatch), time the execution of ", nl
			"the following code to determine how many seconds it takes to",  nl
			"execute.", nl
			nl
			"Press Enter to begin timing the code:"
		);
		
	// Allocate enough dynamic memory to ensure that it does not
	// all fit inside the cache. Note: the machine had better have
	// at least for megabytes free or virtual memory will kic in and invalidate the timing.
	
	malloc(MemToAllocate);	
	
	// Zero out the memory (this loop really exists just to ensure that all memory is mapped in by the OS.)
	
	mov(NumDWords, ecx);
	repeat
		dec(ecx);
		mov(0, (type dword [eax+ecx*4]));
	until( !ecx); // Repeat until ECX = 0.
	
	// wait for the user to press the Enter key.
	
	stdin.readLn();
	
	mov(MainRepetitions, edx);
	add(MisalignBy, eax); // Force misalignment  of data
	
	repeat
		mov(DataRepetitions, ecx);
		align(CacheLineSize);
		repeat
			sub(4, ecx);
			mov([eax+ecx*4], ebx);
			mov([eax+ecx*4], ebx);
			mov([eax+ecx*4], ebx);
			mov([eax+ecx*4], ebx);
			
		until(!ecx);
		dec(edx);
		
	until(!edx); // Repeat until EAX is zero.
	
	stdout.put(stdio.bell, "Stop timing and record time spent", nl, nl);
	
	// time the aligned access
	
	stdout.put
	(
		"Press Enter again to begin timing access to aligned variable:"
	);
	stdin.readLn();	
	
	// If you change the constant above, be sure to change this one, too!
	mov(MainRepetitions, edx);
	sub(MisalignBy, eax);	// Realign the data.
	
	repeat
		mov(DataRepetitions, ecx);
		align(CacheLineSize);
		
		repeat
			sub(4, ecx);
			mov([eax+ecx*4], ebx);
			mov([eax+ecx*4], ebx);
			mov([eax+ecx*4], ebx);
			mov([eax+ecx*4], ebx);
			
		until(!ecx); 
		dec(edx); // Repeat until eax is zero
		
		until(!edx);
		stdout.put(stdio.bell, "Stop timing and record time spent", nl, nl);
		free (eax);
		
	end ConstDemo;
