program sum_digits;
{
    Сгенерировать случайное число, вывести на экран это число, а также сумму и произведение его цифр.
}
const
    MAX = 900;
    MIN = 100;
var
    n: integer;
    a, b, c: byte;
begin
    randomize;
    n := random(MAX) + MIN;
    writeln(n);
    a := n div 100;
    b := n div 10 mod 10;
    c := n mod 10;
    writeln('Сумма: ', a+b+c);
    writeln('Произведение: ', a*b*c);
end.