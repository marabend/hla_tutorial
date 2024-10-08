program SimpleFileOutput;

#include("stdlib.hhf")

static
	outputHandle:dword;
	
begin SimpleFileOutput;
	
	fileio.openNew("myfile.txt");
	
	mov(eax, outputHandle);
	
	for(mov(0, ebx); ebx < 10; inc(ebx)) do
		fileio.put(outputHandle, (type uns32 ebx), nl);
	endfor;
	
	fileio.close(outputHandle);
end SimpleFileOutput;
