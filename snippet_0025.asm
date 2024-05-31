program signExtension;
#include ("stdlib.hhf");

static
	i8: int8;
	i16: int16;
	i32: int32;
	
begin signExtension;
	
	stdout.put("Enter a small negative number: ");
	stdin.get(i8);
	
	stdout.put(nl, "Sign extension using CBW and CWDE: ", nl, nl);
	
	mov(i8, al);
	stdout.put("You entered ", i8, " ($", al, ")", nl);
	
	cbw();
	mov(ax, i16);
	stdout.put("16-bit sign extension: ", i16, " ($", ax, ")", nl);
	
	cwde();
	mov( eax, i32 );
	stdout.put( "32-bit sign extension : ", i32, " ($", eax, ")", nl);
	stdout.put(nl, "Sign extension using MOVSX:", nl, nl);
	
	movsx(i8, ax);
	mov (ax, i16);
	stdout.put("16-bit sign extension: ", i16, " ($", ax, ")", nl);
	
	movsx(i8, eax);
	mov(eax, i32);
	stdout.put("32-bit sign extension: ", i32, " ($", eax, ")", nl);
end signExtension;
	

// cbw();  Converts the byte in AL to a word in AX via sign extension.
// cwd();  Converts the word in AX to a double word in DX:AX
// cdq();  Converts the double word in EAX to the quad word in EDX:EAX
// cwde();  Converts the word in AX to a doubleword in EAX.
