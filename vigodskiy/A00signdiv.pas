program A00signdiv;

var 
	expir: integer;
	expir_str: String;

{ ----------------------------------------- }

procedure Div2(num: String);

var i, end_num, res: integer;
begin
	for i:=1 to length(num) do 

		Val(num[length(num)], end_num);
		res := end_num mod 2;

		if (end_num = 0) or (res = 0) then 
		begin 
			writeln('Делится на 2');
		end;
end;

{ ----------------------------------------- }

procedure Div4(num: String);

var i, end_num, sum_num, res: integer;
begin
	if length(num) > 3 then
	begin
		for i:=1 to length(num) do 

			Val(num[length(num)], end_num);
			res := end_num mod 2;

			if (end_num = 0) or (res = 0) then 
			begin 
				writeln('Делится на 4');
			end;
	end
	else
		for i:=1 to 2 do begin
			Val(num[i], res);
			sum_num += res;
			writeln('Рез', sum_num); 
		end
end;

{ ----------------------------------------- }
{ ----------------------------------------- }
{ ----------------------------------------- }

{ ----------------- НАЧАЛО ----------------- }

begin
  
	write('Введите число для исследования ');
	read(expir);  

	Str(expir, expir_str);
	{Делимость на 2}
	Div2(expir_str);
	{Делимость на 4}
	Div4(expir_str);
	{Делимость на 8}
	{Делимость на 3 и на 9}
	{Делимость на 6}
	{Делимость на 5}
	{Делимость на 5}
	{Делимость на 10, 100 и 1000}
	{Делимость на 11}

	readln;
end.


{uses crt;
var

p,d,i,k:integer;
s:string[50];
begin
clrscr;
writeln('Vvedite text iz 50 bukv');
readln(s);
writeln('Resultat= ');
For i:=1 to Length(s) do
begin
if i mod 10<>0  then write(s[i]:2)
else writeln(s[i]:2);
end;
readln;
end.}