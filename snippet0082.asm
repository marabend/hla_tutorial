program demoLocalVars2;
#include ("stdlib.hhf");

static
	i: uns32 := 10;
	j: uns32 := 20;
	
	// The following procedure declares "i" and "j"
	// as local variables, so it does not have access to the global
	// variables by the same name.
	
	procedure First;
	
	var
		i: int32;
		j: uns32;
	
	begin First;
		
		mov(10, j);
		for(mov(0, i); i<10; inc(i)) do
			stdout.put("i=", i," j=", j, nl);
			dec(j);
		endfor;
	end First;
	
	// This procedure declares only an "i" variable.
	// It cannot access the value of the global "i"
	// variable but it can access the value of the global "j" 
	// object since it does not provide a local variant of "j".
	
	procedure Second;
	var
		i:uns32;
	
	begin Second;
		mov(10, j);
		for(mov(0, i); i<10; inc(i)) do
			stdout.put("i=", i, " j=", j, nl);
			dec(j);
		endfor;
	end Second;
	
begin demoLocalVars2;
	First();
	Second();
	
	// Sinc ethe calls to First and Second have not modified variable "i"
	// the following statement should print "i=10". However, since the Second procedure manipulated global variable "j", this
	// code will print "j=0" rather than "j=20".
	
	stdout.put("i=", i, " j=", j,nl);
	
end demoLocalVars2;
