program charInputDemo;

#include ("stdlib.hhf");

static
	c:char;

begin charInputDemo; 
	
	stdout.put("Enter a character : ");
	stdin.getc();
	
	if(al >= 'a') then
		if(al <= 'z') then
			and ($5f, al);
		endif;
	endif;
	
	stdout.put
		(
			"The character you entered, possibly ", nl,
			"converted to upper case, was '"
		);
		
		stdout.putc(al);
		stdout.put("'", nl);
		
	end charInputDemo;
