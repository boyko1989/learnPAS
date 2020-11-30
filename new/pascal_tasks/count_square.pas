program count_square;
{
    Программа будет считать количество прямоугольников на данной площади
}
const 
    LONG = 1;
    HIGH = 1;
    //AREA = 1;
var
    lon,                // Длина исследуемой площади
    hig,                // Ширина исследуемой площади
    
    count_mal,          // Прирост маленьких прямоугольников за итеррацию
    long_lit,           // Длина маленьких прямоугольников
    high_lit,           // Ширина маленьких прямоугольников
    area_lit,           // Площадь маленьких прямоугольников
    i,                  // Прирост длины
    j,                  // Прирост высоты
    position,           // Положение (горизонталь 1, вертикаль 2)
    layer,              // Количество слоёв в клетках (_lit))
    count_all,
    ar_prov: integer;   // Площадь исследуемой фигуры

    count: longint;     // Количество маленьких прямоугольников
begin
    long_lit := LONG;
    high_lit := HIGH;
    area_lit := long_lit * high_lit;

    repeat 
        write('Введите длину площади: '); readln(lon);
        write('Введите ширину площади: '); readln(hig);
        ar_prov :=  lon*hig;
        if ar_prov <= 0 then writeln('Проверьте параметры ...');
    until ar_prov > 0;

//count := ar_prov div area_lit;
    count := 0;   
    count_mal := 0;
    count_all := 0;
    writeln;

for j := HIGH to hig do
begin
    writeln('count_all: ', count_all);
    
    for i := LONG to lon do
    begin
        // writeln;
        // writeln('Номер внешней итерации: ', j);
        // writeln('Номер итерации: ', i);

        // writeln('high_lit: ', high_lit);
        
        
        // writeln;
        // writeln('. . . . . . . . . . . . . .');
        // writeln;
        // writeln;

        layer := hig div high_lit;
        count_mal := (lon div long_lit)*layer;

        count := count_mal + count;
        long_lit := long_lit + 1;
        area_lit := long_lit * high_lit;
        //count_mal := 0;

        
        // writeln;
        // writeln('============================');
    end;
    high_lit := high_lit+1;
    count_all := count + count_all;
    writeln('COUNT внутренней итерации №', i, ': ', count);
    writeln('COUNT_ALL на данный момент: ', count_all);

end;



writeln('На данной площади поместится ', count_all, ' целочисленных прямоугольников');
        
    
end.