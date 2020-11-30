program punkten; 
{
   Игра: дано какое-то количество точек и каждый игрок по очереди может проводить через две точки отрезки. Отрезки могут выходить из одной точки, но не могут иметь пересечений. Побеждает сделавший последний ход.
}
const
   MAX_PN = 5;

var
  player_1, player_2,
  punkten, hodov,
  count_ch, count_nch,
  rev,
  i, j: integer;
  chet: string;


begin
   count_ch := 0;
   count_nch := 0;
   for i := MAX_PN downto 2 do begin // отмеряет количество точек
      punkten := i;
      
      hodov := punkten + 1;
      for j := hodov downto 1 do begin
         rev := j mod 2;
         if rev <> 0 then begin
            //chet := 'чётным';
            
            count_ch := count_ch + 1;
         end
         else 
            //chet := 'чётный';
            count_nch := count_nch + 1;
            //writeln('');
            writeln('Вариант с ', i, ' точек, в нём ', j, ' ходов.');
      end;
    //  writeln('Вариант с ', i, ' точек, в нём ', j, ' ходов.');
   end;
   writeln('Вариантов с чётным количеством ходов - ', count_ch, ', а с нечётным - ', count_nch,' штук.');
      
end.
