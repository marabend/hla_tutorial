Program DemoVars;
#include("stdlib.hhf")

static
	InitDemo:	int32 := 5;
	NotInitialized: int32;

begin DemoVars;
	
	// Display the value of the pre-initialized variable:
	
	stdout.put("InitDemo's value is ", InitDemo, nl);
	
	// Input an integer value from the user and display that value:
	
	stdout.put("Enter an integer value: ");
	stdin.get( NotInitialized );
	stdout.put("You entered : ", NotInitialized, nl);

end DemoVars;
