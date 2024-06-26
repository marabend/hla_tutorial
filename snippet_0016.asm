program CheckerBoard;
#include ("stdlib.hhf");

static
	xCoord: int8; // Counts off eight squares in each row.
	yCoord: int8; // Counts off four pairs of squares in each column
	ColCntr: int8; // Counts off four rows in each square.
	
begin CheckerBoard;
	
	mov(0, yCoord);
	while(yCoord < 4) do
	
		// Display a row that begins with black.
		
		mov( 4, ColCntr);
		repeat
			
			// Each square is a 4x4 group of spaces (white) or asterisks (black).
			// Print out one row of asterisks/spaces for the current row of squares.
			
			mov(0, xCoord);
			while(xCoord < 4) do
				stdout.put("****    ");
				add(1, xCoord);
			endwhile;
			stdout.newln();
			sub(1, ColCntr);
		until(ColCntr = 0);
		
		// Display a row that begins with white.
		
		mov( 4, ColCntr);
		repeat
			// Print out a single row of spaces/asterisks for this row of squares:
			
			mov(0, xCoord);
			while( xCoord < 4) do
				stdout.put("    ****");
				add(1, xCoord);
			endwhile;
			stdout.newln();
			sub(1, ColCntr);
		until( ColCntr = 0);
		
		add(1, yCoord);
	endwhile;
end CheckerBoard;
