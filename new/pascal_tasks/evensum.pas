program evensum;

{Найти сумму всех чётных цифр, входящих в состав числа}

var
	n: longint; {исходное число}
    sum: integer; {сумма четных чисел}
begin
	readln(n);
	sum := 0;
	while n > 0 do {Пока значение исходного числа больше 0, проверять на чётность и если истина, то добавлять её к сумме чётных чисел}
		begin
			if n mod 10 mod 2 = 0 then
				writeln('iff');
				sum := sum + n mod 10;
				writeln('end_IF ', sum);
			n := n div 10; {уменьшаем на разряд вправо}
			writeln('n = ', n);
		end;
		writeln('sum = ', sum);
end.
