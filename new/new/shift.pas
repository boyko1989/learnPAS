program shift;
{$R-}
var
	x: byte;
	y: shortint;
	j: integer;
begin
	x := 8;
	for j := 1 to 5 do
		begin
			x := x shl 1;
			write(x:6);
		end;
	writeln;
	x := 8;
	for j := 1 to 5 do
		begin
			x := x shr 1;
			write(x:6);
		end;
	writeln;
	y := -8;
	for j := 1 to 5 do
		begin 
			y := y shl 1;
			write(y:6);
		end;
	writeln;
	y := -8;
	for j := 1 to 5 do
		begin
			y := y shr 1;
			write(y:6);
		end;
	readln;
end.
