{program gov_sim;
uses crt, Utils;
var
    millsec: real;
begin
// приветствие
// вычисление случайных величин  
millsec := Milliseconds;
writeln(millsec);
end.}
program ExchSortFlag_NxM_322;
//uses crt;
const
  n = 7;
  m = 3;
type
  oneMas = array[1..n * m] of integer;
  twoMas = array[1..n, 1..m] of integer;
var
  masTest: twoMas;
  masTemp: oneMas;
  LapsTime: real;
    {Заполнение и вывод на экран входящей матрицы}
procedure inputData(var masTest: twomas);
var
  i, j, idmt: integer;
begin
  idmt := 1;
  writeln('Source massiv A:');
  for j := 1 to m do
  begin
    for i := 1 to n do
    begin
      masTest[i, j] := idmt;
      write(' ', masTest[i, j]:5);
      inc(idmt);
    end;
        writeln;
  end;
end;
    {Вывод на экран отсортированной матрицы}
procedure outputData(var masTest: twoMas);
var
  i, j: integer;
begin
  writeln('Sort massiv A:');
  for j := 1 to m do
  begin
    for i := 1 to n do
    begin
      write(' ', masTest[i, j]:5);
    end;
    writeln;
  end;
end;
    {Сортировка матрицы A[m,n]. Методом обмена с флагом}
procedure ExchSortFlag(var masTest: twoMas; var masTemp: onemas);
var
  i, j, k, s, e, tmp, idmt: integer;
    flag: boolean;
    {Копирование элементов двумерного массива в одномерный}
begin
  idmt := 1;
  for j := 1 to m do
  begin
    for i := 1 to n do
    begin
      masTemp[idmt] := masTest[i, j];
      inc(idmt);
    end;
  end;
    {Сортировка одномерного массива}
  s := 1;  //Первый элемент масива
  e := n * m;  //{Последний елемент масива
  repeat
    flag := true; //   false           {установка флага }
    while e > s do                                        // если последний больше первого
    begin                                                     // выполняем
      s := s + 1;
      for i := e downto s + 1 do                      // проверка массива
        if masTemp[i] < masTemp[i - 1] then     // если i-ый элемент меньше (i-1)-го, то
        begin                                               // меняем их местами
          tmp := masTemp[i];                           
          masTemp[i] := masTemp[i - 1];
    { Улучшаем метод. Добовляем счётчик проходов. 
После одного прохода один элемент будет стоять на своем месте, 
        а значит с ним сравнивать не имеет смыслы}
          masTemp[i - 1] := tmp;                       // 
          flag := false                                        // true
        end;
      //s := s+1;
    end;
  until not flag;  {Выход при flag=false, если нет то заново проверяем массив}
    {Копирование элементов одномерного массива в двумерный}
  idmt := 1;
  for j := 1 to m do
  begin
    for i := 1 to n do
    begin
      masTest[i, j] := masTemp[idmt];
      inc(idmt);
    end;
  end;
end;
 
//var
  //LapsTime: real;
begin
  Milliseconds;
  inputData(masTest);
  outputData(masTest);
  ExchSortFlag(masTest, masTemp);                         
  //outputData(masTest);
  //writeln('Tims:');
  //Milliseconds;
  LapsTime := Milliseconds();    //  = Milliseconds / 1000;
  //LapsTime := MillisecondsDelta();
  Writeln('Sorting time: ', LapsTime, '  ms');
  readln;
end.

