program FileSizeDemo;

#include ("stdlib.hhf")

static
	handle:dword;
	
begin FileSizeDemo;

	// Display the size of the "FileSizeDemo.hla" file:
	
	fileio.size(handle); // Can't be compiled
	
	if(eax <> - 1) then
		stdout.put("Size of file: ", (type uns32 eax), nl);
	else
		stdout.put("Error calculating file size" nl);
	endif;
	
	// Same thing, using the file handle as parameter:
	
	fileio.open("FileSizeDemo.hla", fileio.r);
	mov(eax, handle);
	fileio.size(handle);
	
	if(eax <> - 1) then
		stdout.put("Size of file(2): ", (type uns32 eax), nl);
	else
		stdout.put("Error calculating file size" nl);
	endif;
	
	fileio.close(handle);
	
	end FileSizeDemo;
