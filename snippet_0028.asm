program charInputDemo2;

#include("stdlib.hhf");

static
	c:char;

begin charInputDemo2;

	stdout.put("Enter a character: ");
	stdin.get(c);
	
	if(c >= 'a') then
		
		if(c <= 'z') then
			
			and($5f, c);
		endif;
		
	endif;
	
	stdout.put
		(
			"The character you entered, possibly ", nl,
			"converted to upper case, was '",
			c,
			"'", nl
		);
	end charInputDemo2;
