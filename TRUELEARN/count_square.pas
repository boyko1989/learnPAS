program count_square;
{
    Программа будет считать количество прямоугольников на данной площади
}
var
    i, j, long, high1, count, raznost_i, raznost_j, quint_i, quint_j: integer;
    summ, neg, CW: int64;
begin
    readln(long);
    readln(high1);
    neg := 0;
    summ := 0;
    for i := long downto 1 do begin
      raznost_i := long - i;
      quint_i := raznost_i + 1;
        
        for j := high1 downto 1 do begin
            raznost_j := high1 - j;
            quint_j := raznost_j + 1;
				count := quint_i * quint_j;
                if count < 0 then neg := neg + 1;
                if i = j then CW := CW + (i*j);
            writeln(i,' x ', j, ' - ', count, ' шт');
            summ := summ + count;
        end;
    end; 
    writeln('Всего на исследуемой площади может поместиться ', summ,' прямоугольников');
    writeln('Квадратов из них - ', CW);
    writeln('neg = ', neg)
end.
