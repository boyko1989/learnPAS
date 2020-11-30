program password;
var
    try_pass, pass: string;
    res: boolean;
begin
    writeln('Придумайте пароль: ');
    read(pass);
    writeln('Попробуте зайти');
    writeln('=====================');
    repeat
        readln(try_pass);
        write('Ваш пароль: ');
        if try_pass = pass then
            begin
                res := true;
            end;
    until res;
end.