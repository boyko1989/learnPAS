program table2;
var
	x:double;
	k:integer;            {целое, счётчик циклов}
begin
	writeln('x','    sin(x)','    cos(x)');
	x:=0;
	for k:=1 to 10 do     {тело цикла повторяется 10 раз}
		begin             {начало тела цикла}
			writeln(x:4:1,sin(x):10:6,cos(x):10:6);
			x:=x+0.1;
		end;              {конец тела цикла}
	readln;               {задержка для просмотра результатов}
end.
