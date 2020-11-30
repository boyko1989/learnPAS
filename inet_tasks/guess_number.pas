program guess_number;
	{Угадать число, которое загадал пользователь, используя только инструкцию if-else}
const
	MAX = 100;
var
	ansv: char;
	i, n: integer;
begin
	randomize;
	write('Загадайте число от 1 до ', MAX);
	readln;
	for i := 1 to MAX do begin
		n := random(MAX);
		write('Вы загадали? ', n, ' (y/n) '); readln(ansv);
		if ansv = 'y' then begin
			writeln('Ваше число ', n);
			break;
		end
		else begin
			writeln('Сейчас попробуем ещё');
		end;
	end;
end.
