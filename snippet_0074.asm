program CopyDemo;

#include("stdlib.hhf");

begin CopyDemo;

	// Make a copy of myfile.txt to itself to demonstrate a true "failsIfExists" parameter.

	
	if( !fileio.copy( "myfile.txt", "myfile.txt", true )) then // Compilation Error

		stdout.put("Did not copy 'myfile.txt' over itself", nl);
	else
		stdout.put("Whoa! The failsIfExists parameter didn't work.", nl);
	endif;
	
	// Okay, make a copy of the file to a different file, to verify that this works properly
	
	if(fileio.copy("myfile.txt", "copyOfMyFile.txt", false)) then
		stdout.put("Successfully copied the file" nl);
	else
		stdout.put("Failed to copy the file (maybe it doesn't exist?" nl);
	endif; 
	
end CopyDemo;
