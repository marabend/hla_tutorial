program DeleteFileDemo;

#include ("stdlib.hhf");

static
	handle: dword;
	
begin DeleteFileDemo;
	
	// Delete the "myfile.txt" file:
	
	filesys.delete("xyz");
	
	if(eax) then
		stdout.put("Deleted the file", nl);
	else
		stdout.put("Error deleting the file" nl);
	endif;

end DeleteFileDemo;
