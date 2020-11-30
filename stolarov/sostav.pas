program modulo;
var
	a, b, t: integer;
begin
	read(a);
	read(b);
	if a > b then 
    begin
        t := a;
        a := b;
        b := t
    end;
	writeln('a = ', a);
	writeln('b = ', b);
end.