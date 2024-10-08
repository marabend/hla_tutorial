program SimpleFileInput;

#include ("stdlib.hhf")

static
	inputHandle:dword;
	u:uns32;
	
begin SimpleFileInput;
	fileio.open("myfile.txt", fileio.r);
	mov(eax, inputHandle);
	
	for(mov(0, ebx); ebx < 10; inc(ebx)) do
		fileio.get(inputHandle, u);
		stdout.put("ebx=", ebx, " u=", u, nl);
	endfor;
	fileio.close(inputHandle);
	
end SimpleFileInput;
