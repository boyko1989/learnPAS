program mods;
var
	a, b, c, d: integer;
begin
	write('a = ');
	readln(a);
	write('b = ');
	readln(b);
	write('c = ');
	readln(c);

	d := a mod b;
	writeln('mod 1 d = ', d);
	d := a div b;
	writeln('div 1 d = ', d);


	d := d mod c;
	writeln('mod 2 d = ', d);	
	d := d div c;
	writeln('div 2 d = ', d);
end.
