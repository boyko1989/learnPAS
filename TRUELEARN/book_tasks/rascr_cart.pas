program rascr_cart;
const
    MAX_HEIGHT = 30;
var
    long, heigth, long_2, heigth_2, tmp, ris_long, ris_heigth, i, j, k, SCALE: integer;
    proporz: single;
    granz_long: char;
    granz_heigth: string;

procedure goriz;
    begin
        for i := 1 to ris_long do begin
            write(granz_long);
        end; writeln; end;

procedure paint;
begin   
    proporz := long / heigth;
    ris_heigth := heigth div (SCALE*2);
    granz_heigth := '|';
    ris_long := (Round(proporz*ris_heigth))*2;{long div SCALE;}
    granz_long := '='; 
    writeln;
    writeln(proporz:0:2);
    writeln;
    writeln('Ваш прямоугольник в масштабе 1:',SCALE,' и размерами ', long, ' на ', heigth);

    goriz;            
    for k := 2 to (ris_heigth - 1) do begin
        for j := 1 to ris_long do begin
            if (j = 1) or (j = ris_long) then
                write(granz_heigth)
                else write(' ');
            end; writeln; end;
    goriz;    
end;

function dial(ischod: string; var long, heigth: integer):integer;
begin
    writeln;
    write('Укажите длину ',ischod,' прямоугольника - ');
    readln(long);
    write('Укажите высоту ',ischod,' прямоугольника - ');
    readln(heigth);
end;

begin
    writeln;
    dial('первоначального', long, heigth);

    tmp := 0;
    if heigth > long then begin
        tmp := long;
        long := heigth;
        heigth := tmp;
    end;
    writeln;
    
SCALE := Round((heigth/MAX_HEIGHT) + 0.5); 
    dial('требуемого', long_2, heigth_2);   

// расчитаем сколько прямоугольников второго формата уместится в прямоугольнике первого.

//long, heigth, long_2, heigth_2, 

    {n_l := long div long_2;
    n_h := heigth div heigth_2;}


    paint; 
end.
