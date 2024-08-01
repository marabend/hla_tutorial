program DemoStrConv;

#include("stdlib.hhf");

static
	TodaysDate: date.daterec;
	s: string;
	
begin DemoStrConv;

	date.today(TodaysDate);
	stdout.put("Today's date is ");
	date.print(TodaysDate);
	stdout.newln();
	
	// Convert the date using various formats
	// and display the results:
	
	date.setFormat(date.mdyy);
	date.a_toString(TodaysDate);
	mov(eax, s);
	stdout.put("Date in mdyy format: '", s, "'" nl);
	strfree(s);
	
	date.setFormat(date.mmddyy);
	date.a_toString(TodaysDate);
	mov(eax, s);
	stdout.put("Date in mmddyy format: ´", s, "´" nl);
	strfree(s);
	
	date.setFormat(date.mdyyyy);
	date.a_toString(TodaysDate);
	mov(eax, s);
	stdout.put("Date in mdyyyy format: ´", s, "´" nl);
	strfree(s);
	
	date.setFormat(date.mmddyyyy);
	date.a_toString(TodaysDate);
	mov(eax, s);
	stdout.put("Date in mmddyyyy format: ´", s, "´", nl);
	strfree(s);
	
	date.setFormat(date.MONdyyyy);
	date.a_toString(TodaysDate);
	mov(eax, s);
	stdout.put("Date in MONdyyyy format: ´", s, "´" nl);
	strfree(s);
	
	date.setFormat(date.MONTHdyyyy);
	date.a_toString(TodaysDate);
	mov(eax, s);
	stdout.put("Date in MONTHdyyyy format: ´", s, "´" nl);
	strfree(s);
	
end DemoStrConv;
