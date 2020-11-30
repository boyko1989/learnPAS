program count_square;
{
    Программа будет считать количество прямоугольников на данной площади
}
var
    lon,                // Длина исследуемой площади
    hig,                // Ширина исследуемой площади   
    i,                  // Длина/Ширина маленького прямоугольника
    j,                  // Ширина/Длина маленького прямоугольника
    C, {unic,} CW,      // Произведение во внутреннем цикле
    ar_prov: integer;       // Получившееся количество отдельных видов прямоугольников
    count,            // Площадь исследуемой фигуры
    Sum: longint;     // Количество маленьких прямоугольников

begin
    count := 0;
    CW := 0;

    repeat 
        write('Введите длину площади: '); readln(lon);
        write('Введите ширину площади: '); readln(hig);
        ar_prov :=  lon*hig;
        if ar_prov <= 0 then writeln('Проверьте параметры ...');
    until ar_prov > 0;

    for i := 1 to lon do begin
        Sum := 0;
        for j := 1 to hig do begin
            if i = j then CW := CW + (i*i);
            C := i*j;
            Sum := Sum + C;
            writeln('C: ', C);
            writeln('_______');
        end;
        count := Sum + count;
    end;
        count := (count*2)-CW;
    
    writeln('Sum: ', Sum);
    writeln('Число квадратов: ', CW);
    writeln('Числов возможных прямоугольников: ', count);
end.