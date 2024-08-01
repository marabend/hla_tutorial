program DemoIsLeapYear;

#include("stdlib.hhf");

static
	m: uns8;
	d:  uns8;
	y:  uns16;
	theDate: date.daterec;
	
begin DemoIsLeapYear;
	try
		stdout.put("Enter the month (1-12):" );
		stdin.get(m);
		
		stdin.flushInput();
		stdout.put("Enter the day (1-31):");
		stdin.get(d);
		
		stdin.flushInput();
		stdout.put("Enter the year (1583-9999): ");
		stdin.get(y);
		
		// Assign the fields to a date variable
		
		mov(m, al);
		mov(al, theDate.month);
		mov(d, al);
		mov(al, theDate.day); 
		mov(y, ax);
		mov(ax, theDate.year);
		
		// Force an exception if the date is illegal.
		
		date.validate(theDate);
		
		// Okay, report whether this is a leap year :
		if(date.isLeapYear(theDate)) then
			stdout.put("The year ", y, " is a leap year." nl);
		else
			stdout.put("The year ", y, " is not a leap year." nl);
		endif;
		
		// Technically, the leap day is Feb 25, but most people don't
		// realize this, so use the following output to keep them happy:
		
		if(date.isLeapYear(y)) then
			if(m = 2) then
				if(d = 29) then
					stdout.put(m, "/", d, "/", y, " is the leap day." nl);
				endif;
			endif;
		endif;
		
		exception(ex.ConversionError)
		
		stdout.put
			(
				"One of the input values contained illegal characters" nl
			);
		
		exception(ex.ValueOutOfRange)
		
		stdout.put("One of the input values was too large" nl);
		
		exception(ex.InvalidDate)
		
		stdout.put
		(
			"The input date (", m, "/", d, "/", y, ") was invalid" nl
		);
		
		endtry;
	end DemoIsLeapYear;	
