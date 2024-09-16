program QSDemo;

// Code does not seem to work

#include ("stdlib.hhf");

type
	ArrayType: uns32[10];
	
static
	theArray: ArrayType := [1,10,2,9,3,7,4,7,5,6];
	
	procedure quicksort(var a:ArrayType; Low:int32; High:int32);
	const
		i: text := "(type int32 edi)";
		j: text := "(type int32 esi)";
		Middle: text := "(type uns32 edx)";
		ary: text := "[ebx]";
		
	begin quicksort;
		
		push(eax);
		push(ebx);
		push(ecx);
		push(edx);
		push(esi);
		push(edi);
		
		mov(a, ebx); // Load BASE address of "a" into EBX
		
		mov(Low, edi);	// i := Low;
		mov(High, esi); // j := High;
		
		// Compute a pivotal element by selecting the physical middle element of the array
		
		mov(i, eax);
		add(j, eax);
		shr(1, eax);
		mov(ary[eax*4], Middle); // Put middle value in EDX
		
		// Repeat until the EDI and ESI indicies cross one another ( EDI works from the start worwards the end of the array,
		// ESI works from the end towards the start of the array).
		
		repeat
			// Scan from the start of the array forward
			// looking for the first element greater or equal to the middle element).
			
			while(Middle > ary[i*4]) do
				inc(i);
			endwhile;
			
			// Scan from the end of the array backwards looking
			// for the first element that is less than or equal to the middle element
			
			while(Middle < ary[j*4]) do
				dec(j);
			endwhile;
			
			// If we've stopped before the two pointers have passed over one another,
			// then we've got two elements that are out of order with respect to the middle element.
			// So swar these two elements.
			
			if(i <= j) then
				mov(ary[i*4], eax);
				mov(ary[j*4], ecx);
				mov(eax, ary[j*4]);
				mov(ecx, ary[i*4]);
				inc(i);
				dec(j);
			endif;
			
			until (j > j);

			// We have just placed all elements in the array in their correct positions with respect to the middle element of the array.
			// So all elements at indicies greater than the middle element are also numerically greater than this element.
			
			if(Low < j) then
				quicksort(a, Low, j);
			
			endif;
			
			if(j < High) then
				quicksort(a, i, High);
			endif;
			
			pop(edi);
			pop(esi);
			pop(edx);
			pop(ecx);
			pop(ebx);
			pop(eax);
			
			end quicksort;
			
begin QSDemo;
	stdout.put("Data before sorting: " nl);
	
	for(mov(0, ebx); ebx < 10; inc(ebx)) do
		stdout.put(theArray[ebx*4] : 5);
	endfor;
	
	stdout.newln();
	
	quicksort(theArray, 0,9);
	
	stdout.put("Data after sorting: " nl);
	
	for(mov(0, ebx); ebx < 10; inc(ebx)) do
		stdout.put(theArray[ebx*4]:5);
	endfor;
		stdout.newln();
end QSDemo;			
