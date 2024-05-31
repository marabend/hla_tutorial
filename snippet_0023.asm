program twosComplement;

#include ("stdlib.hhf");

static
	PosValue: int8;
	NegValue: int8;

begin twosComplement;
	stdout.put("Enter an integer between 0 and 127: ");
	stdin.get( PosValue );
	
	stdout.put(nl, "Value in hexadecimal: $");
	stdout.putb( PosValue );
	
	mov( PosValue, al );
	not (al );
	stdout.put(nl, "Invert all the bits: $", al, nl);
	add(1, al);
	stdout.put("Add one: $", al, nl);
	mov( al, NegValue );
	stdout.put("Result in decimal: ", NegValue, nl);
	
	stdout.put
		(
			nl,
			"Now do the same thing with the NEG instruction. ", 
			nl
		);
		
		mov( PosValue, al );
		neg (al);
		mov(al, NegValue);
		
		stdout.put("Hex result = $", al, nl);
		stdout.put("Decial result = ", NegValue, nl);

end twosComplement;
