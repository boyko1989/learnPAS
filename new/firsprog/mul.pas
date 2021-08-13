program mul;
var
    x, y: longint;
begin
    {$I-}{отключаем встроенные диагностические сообщения для ошибок пользовательского ввода}
    read(x, y);
    if IOResult = 0 then
        writeln(x * y)
    else
        writeln('I could''t parse your input')
end.