program gov_sim;
uses crt, DateUtils, SysUtils;
var
    millsec: real;
begin
// приветствие
// вычисление случайных величин  
millsec := MillisecondOf(Now,1);
writeln(millsec);
end.