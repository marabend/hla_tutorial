program SimpleFileInput2;
#include ("stdlib.hhf")

static
	inputHandle:dword;
	u:uns32;
	
begin SimpleFileInput2;
	
	fileio.open("myfile.txt", fileio.r);
	mov(eax, inputHandle);
	
	for(mov(0, ebx); ebx < 10; inc(ebx)) do
		fileio.get(inputHandle, u);
		stdout.put("ebx=", ebx, " u=", u, nl);
		
	endfor;
	stdout.newln();
	
	// Rewind the file and reread the data from the beginning.
	// This time, use fileio.eof() to determine when we've
	// reached the end of the file.
	
	fileio.rewind(inputHandle);
	while(fileio.eof(inputHandle) = false) do
		
		// Read and display the next item from the file:
		
		fileio.get(inputHandle, u);
		stdout.put("u=", u, nl);
		
		// Note: after we read the last numeric value, there is still
		// a newline sequence left in the file, if we don't read the 
		// newline sequence after each number then EOF will be false
		// at the start of the loop and we'll get an EOF exception
		// when we try to read the next value. Calling fileio.ReadLn
		// "eats" the newline after each number  and solves this problem.
		
		fileio.readLn(inputHandle);
		
	endwhile;
	
	fileio.close(inputHandle);

end SimpleFileInput2;
