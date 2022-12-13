program neg_pos_num;

function Readlogint(var result: integer):boolean;
var
	c: char;
    res: longint;
    pos: integer;

	begin
		res := 0;
		pos := 0;		

		repeat
			read(c);
			pos := pos + 1
		until (c <> ' ') and (c <> #10); 

		while (c <> ' ') and (c <> #10) do begin
        	if (c < '0') or (c > '9') {or '-'} then
			begin
			if c = '-' then Readlogint := true else
				writeln('Недопустимый символ ''', c, ''' на позиции: ', pos);
				readln;
				Readlogint := false;
				exit
			end;
			res := res*10 + ord(c) - ord('0');
			read(c);
			pos := pos + 1
		end;
		result := res;
		Readlogint := true
	end;

function count_razr(num1: integer):string;
	begin
		if num1 < 0 then num1 := -num1;
		if num1 = 0 then count_razr := '';
		if (num1 < 10) and (num1 >= 1) then count_razr := 'однозначное число';
		if (num1 > 10) and (num1 < 99) then count_razr := 'двузначное число';
		if (num1 >100) and (num1 < 999) then count_razr := 'трёхзначное число';
	end;

var
	num: integer;
	ok: boolean;

begin	
	//{$I-}
		writeln('Приветствуем!');
	repeat
		writeln('Введите, пожалуйста число с наибольшим количеством разрядов - три');
		ok := Readlogint(num)
	until not ok;

	//if IOResult = 0 then begin

		while (num > 1000) or (num < -1000) do begin
			writeln('Извините, с такими числами не работаем:');
			writeln('Введите число с меньшим количеством разрядов');
			readln(num);
		end;

		writeln(num);

		if num = 0 then writeln('Вы ввели нуль');
		if num > 0 then write('Положительное ');
		if num < 0 then write('Отрицательное ');
		writeln(count_razr(num));

	//end	else
		//writeln('Вы ввели нечто немыслимое...')	
end.
