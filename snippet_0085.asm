program NumsInColumns;

#include ("stdlib.hhf");

var
	i32: int32;
	ColCnt: int8;
	
begin NumsInColumns;
	mov(96,i32);
	mov(0, ColCnt);
	while(i32 > 0) do
		if(ColCnt = 8) then
			stdout.newln();
			mov(0, ColCnt);
		endif;
		stdout.puti32Size(i32, 5, ' ');
		sub(1, i32);
		add(1, ColCnt);
	endwhile;
	stdout.newln();
end NumsInColumns;
