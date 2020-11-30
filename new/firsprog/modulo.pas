program modulo;
var
	x, a: integer;
	negtive: boolean;
begin
	read(x);
	negtive := x < 0;
	if negtive then
		x := -x; 
	writeln(x)
end.
