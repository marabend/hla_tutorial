program TruncateDemo;

#include ("stdlib.hhf");

static
	fileHandle:dword;
	u:uns32;
	
begin TruncateDemo;
	
	fileio.openNew("myfile.txt");
	
	mov(eax, fileHandle);
	for(mov (0, ecx); ecx < 20; inc(ecx)) do
		fileio.put(fileHandle, (type uns32 ecx), nl);
	endfor;
	
	// Let's rewind to the beginning of the file and rewrite the first ten lines and then truncate the file at that point.
	
	fileio.rewind(fileHandle);
	
	for(mov(0, ecx); ecx < 10; inc(ecx)) do
		fileio.put(fileHandle, (type uns32 ecx), nl);
	endfor;
	
	fileio.truncate(fileHandle);
	
	// Rewind and display the file content to ensure that the file truncation has worked
	
	fileio.rewind(fileHandle);
	
	while(!fileio.eof(fileHandle)) do
		
		// Read and display the next item from the file:
		
		fileio.get(fileHandle, u);
		stdout.put("u=", u, nl);
		fileio.readLn(fileHandle);
		
	endwhile;
	
	fileio.close(fileHandle);
	
end TruncateDemo; 
