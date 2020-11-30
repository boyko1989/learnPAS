program random_three_zero;
{
    Сгенерировать случайное трехзначное число, оканчивающееся на ноль.
}
const
    MAX = 900;
    MIN = 100;
var 
    n, a: integer;
begin
    randomize;
    a := 1;
    while a < 10000 do
        begin 
            n := random(MAX) + MIN;
            writeln(n);
            // n := (n div 10)*10;
            if n mod 10 <> 0 then
                n := n - n mod 10;            
            writeln(n);
            a := a + 1;
        end;
end.