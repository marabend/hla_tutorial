program DemoToday;

#include ("stdlib.hhf");

static
	TodaysDate: date.daterec;

begin DemoToday;

	date.today(TodaysDate);
	
	stdout.put
		(
			"Today is ",
			(type uns8 TodaysDate.month), "/",
			(type uns8 TodaysDate.day), "/",
			(type uns16 TodaysDate.year),
			nl
		);
		
	// Okay. report whether is is a leap year :
	
	if(date.isLeapYear(TodaysDate)) then
		stdout.put("this is a leap year." nl);
	else
		stdout.put("This is not a leap year." nl);
	endif;
end DemoToday;
