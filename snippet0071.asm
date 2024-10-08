program AppendDemo;

#include ("stdlib.hhf");

static
	fileHandle:dword;
	u:uns32;
	
begin AppendDemo;
	
	fileio.open("myfile.txt", fileio.rw);
	mov(eax, fileHandle);
	fileio.append(eax);
	
	for(mov(10, ecx); ecx < 20; inc(ecx)) do
		fileio.put(fileHandle, (type uns32 ecx), nl);
	endfor;
	
	// Let's rewind to the beginning of the file and display all the
	// data from the file, including the new data we just wrote to it:
	
	fileio.rewind(fileHandle);
	
	while(!fileio.eof(fileHandle)) do
		
		// Read and display the next item from the file.
		
		fileio.get(fileHandle, u);
		stdout.put("u=", u, nl);
		fileio.readLn(fileHandle);
	
	endwhile;
	
	fileio.close(fileHandle);

end AppendDemo;
