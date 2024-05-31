program dateDemo;

#include ("stdlib.hhf");

static
	day: 		uns8;
	month: 	uns8;
	year:	uns8;
	
	packedDate: word;
	
begin dateDemo;
	stdout.put("Enter the current month, day and year: ");
	stdin.get(month, day, year);
	
	// Pack the data into the follwong bits:
	//
	// 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
	//   m  m  m  m   d   d d d d  y y y y y y y
	
	mov(0, ax);
	mov( ax, packedDate); // Just in case there is an error.
	
	if(month > 12) then
		stdout.put("Month value is too large", nl);
	elseif(month = 0) then
		stdout.put("Month value must be in the range 1..12", nl);
	elseif(day > 31) then
		stdout.put("Day value is too large", nl);
	elseif(day = 0) then
		stdout.put("Day value must be in the range 1..31", nl);
	elseif( year > 99) then
		stdout.put("Year value must be in the range 0..99", nl);
	else
		mov(month, al);
		shl(5, ax);
		or( day, al);
		shl(7, ax);
		or(year, al);
		mov(ax, packedDate);
		
	endif;
	
	//  Display the packed value:
	
	stdout.put("Packed data = $", packedDate, nl);
	
	// Unpack the date:
	
	mov(packedDate, ax);
	and($7f, al);
	mov(al, year);
	
	mov(packedDate, ax);
	shr(7, ax);
	and(%1_1111, al);
	mov(al, day);
	
	mov(packedDate, ax);
	rol(4, ax);
	and(%1111, al);
	mov(al, month);
	
	stdout.put("The date is ", month, "/", day, "/", year , nl);
end dateDemo;
