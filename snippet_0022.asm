program LogicalOp;

#include ("stdlib.hhf");

begin LogicalOp;
	
	stdout.put("Input left operand: ");
	stdin.get( eax );
	stdout.put( "Input right operand: ");
	stdin.get( ebx );
	
	mov( eax, ecx );
	and ( ebx, ecx);
	stdout.put( "$", eax, " AND $", ebx, "  = $", ecx, nl);
	
	mov(eax, ecx);
	or(ebx, ecx);
	stdout.put( "$", eax, " AND $", ebx, " = $", ecx, nl);
	
	mov(eax, ecx);
	xor( ebx, ecx);
	stdout.put("$", eax, " XOR $", ebx, " = $", ecx, nl);
	
	mov(eax, ecx);
	not (ecx);
	stdout.put( "NOT $", eax, " = $ ", ecx, nl);
	
	mov( ebx, ecx);
	not (ecx);
	stdout.put("NOT $", ebx, " = $", ecx, nl);
end LogicalOp;
