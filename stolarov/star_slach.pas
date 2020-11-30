program star_slach;
var
    n, m: integer;
begin
    for n := 1 to 24 do
    begin
        {напечатать нужное кол-во пробелов
        
        для этого нужно на каждой строке печатать на 1 пробел больше, чем на предыдущей
        Иначе, число пробелов равно n-1, где n - номер строки.
        }
        for m := 1 to n - 1 do
            write(' '); 
        writeln('*')
    end
end.