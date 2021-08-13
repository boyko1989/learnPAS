program inter;
const
	MIN = 1;
	MAX = 10;
Type
	qq = MIN..MAX;
Var
	x: qq;
	y: MIN..MAX;
begin
	x := 6;
	y := 4;
	x := x xor y;
	writeln(x);
end.
