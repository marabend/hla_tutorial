program UnsExample;

#include ("stdlib.hhf");

static
	UnsValue: uns16;
	
begin UnsExample;
	stdout.put("Enter an integer between 32,768 and 65,535: ");
	stdin.getu16();
	mov( ax, UnsValue );
	
	stdout.put
	(
		"You entered ",
		UnsValue,
		".   If you treat this as a signed integer, it is "
	);
	
	stdout.puti16( UnsValue );
	stdout.newln();
end UnsExample;
	
