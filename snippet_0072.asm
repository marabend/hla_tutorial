program RandomAccessDemo;
#include ("stdlib.hhf")

type
	fileRec:
		record
			x:int16;
			y:int16;
			magnitude:uns8;
		endrecord;
	const
		// Some arbitrary data we can use to initialize the file:
	fileData:=
 		[
 			fileRec:[ 2000, 1, 1 ],
 			fileRec:[ 1000, 10, 2 ],
 			fileRec:[ 750, 100, 3 ],
 			fileRec:[ 500, 500, 4 ],
 			fileRec:[ 100, 1000, 5 ],
 			fileRec:[ 62, 2000, 6 ],
 			fileRec:[ 32, 2500, 7 ],
 			fileRec:[ 10, 3000, 8 ]
		 ];

	static
		fileHandle: dword;
		RecordFromFile: fileRec;
		InitialFileData: fileRec[8] := fileData;
		
	begin RandomAccessDemo;
		
		fileio.openNew("fileRec.bin");
		mov(eax, fileHandle);
		
		// Okay, write the initial data to the file in a sequential fashion:
		
		for(mov(0, ebx); ebx < 8; inc(ebx)) do
			intmul(@size(fileRec), ebx, ecx); // Compute index into fileData
			fileio.write
			(
				fileHandle,
				(type byte InitialFileData[ecx]),
				@size(fileRec)
			);
		
		endfor;
		
		// now let's demonstrate a random access of this file
		// by reading the records from the file backwards
		
		stdout.put("Reading the records, backwards:" nl);
		
		for(mov(7, ebx); (type int32 ebx) >= 0; dec(ebx)) do
			intmul(@size (fileRec), ebx, ecx); // Compute file offset
			fileio.seek(fileHandle, ecx);
			fileio.read
			(
				fileHandle,
				(type byte RecordFromFile),
				@size (fileRec)
			);
			
			if(eax = @size(fileRec)) then
				stdout.put
				(
					"Read record #",
					(type uns32 ebx),
					", values: " nl
					" x: ", RecordFromFile.x, nl
					" y: ", RecordFromFile.y, nl
					"magnitude: ", RecordFromFile.magnitude, nl nl
				);
			else
				stdout.put("Error reading record number", (type uns32 ebx), nl);
			endif;
		endfor;
		
		fileio.close(fileHandle);
	end RandomAccessDemo;
