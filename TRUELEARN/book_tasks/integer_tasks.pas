program assorti;
{
    С начала суток прошло n секунд. Определить:

        1. Сколько полных часов прошло с начала суток
        2. Сколько полных минут прошло с начала очерелного часа
        3. Сколько полных секунд прошло с начала очередной минуты
}
const
    MAX_N_DAY: longint = 86400;
    MAX_MINS_HOUR: longint = 60;
    MAX_N_MIN: longint = 60;
var
    n, count_mins, count_secs, count_hours, mins_fr_hour: longint;
begin
    writeln('Введите количество секунд');
    repeat
        readln(n);//  n := 1231
        if n > MAX_N_DAY then
             writeln('Количество секунд говорит о том, что прошло больше суток...');
    until n < MAX_N_DAY;
        
    count_mins := n div MAX_N_MIN;
    if count_mins mod MAX_N_MIN = 0 then mins_fr_hour := 0
        else mins_fr_hour := count_mins - MAX_MINS_HOUR;
    if mins_fr_hour > MAX_N_MIN then mins_fr_hour := mins_fr_hour - MAX_N_MIN;
    
    count_secs := n - MAX_N_MIN*count_mins;
    count_hours := count_mins div MAX_MINS_HOUR;
// 1 
    writeln('С начала суток прошло ', count_hours, ' полных часов');
// 2 
    writeln('С начала часа прошло ', mins_fr_hour, ' полных минут');
// 3 
    writeln('С начала минуты прошло ', count_secs, ' секунд');
end.



{
    С некоторого момента прошло 234 дня. Сколько полных недель прошло за этот период

const
    DIW = 7;
var 
    long, weeks: integer;
begin
    long := 234;
    //weeks := Trunc(long/DIW);
    weeks := long div DIW;
    writeln(weeks);
    readln;
end.
}    