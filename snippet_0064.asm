program DateTimeDemo;

#include ("stdlib.hhf");

static
	m: uns8;
	d: uns8;
	y: uns16;
	
	theDate: date.daterec;
	
begin DateTimeDemo;
	try
		stdout.put("Enter the month (1-12): ");
		stdin.get(m);
		
		stdin.flushInput();
		stdout.put("Enter the day (1-31):");
		stdin.get(d);
		
		stdin.flushInput();
		stdout.put("Enter the year (1583-9999): ");
		stdin.get(y);
		
		if(date.isValid(m,d,y)) then
			stdout.put(m, "/", d, "/", y, " is a valid date "nl);
		endif;
		
		// Assign the fields to a date variable
		mov(m, al);
		mov(al, theDate.month);
		mov(d, al);
		mov(al, theDate.day);
		mov(y, ax);
		mov(ax, theDate.year);
		
		// Force an exception if the date is illegal
		
		date.validate(theDate);
		
		exception(ex.ConversionError)
			stdout.put
			(
				"One of the input values contained illegal characters" nl
			);
			
		exception(ex.ValueOutOfRange)
			stdout.put
			(
				"One of the input values was too large" nl
 			);
 			
 		exception(ex.InvalidDate)
 			stdout.put
 			( 
 				"The input date (", m, "/", d, "/", y, ") was invalid" nl
 			);
 		endtry;
 		
 	end DateTimeDemo;
 			
