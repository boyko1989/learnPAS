program recurrent; 
{
    # 6.1. Нахождение суммы всех элементов массива

var
    sum , i, n: integer;
    a: array[1..n] of integer;  // массив
begin
    sum := 0;
    for i = 1 to n do begin
        sum := sum + a[i]
    end; 
    // Вывод результата или его использование в расчетах
end.}
{
    # 6.2. Нахождение суммы элементов массива с заданными свойствами (удовлетворяющих некоторому условию)


var
    sum , i, n: integer;
    a: array[1..n] of integer;  // массив
begin
    sum := 0;
    for i = 1 to n do begin
        if < условие > then begin
            sum := sum + a[i]
        end;
    end; 
    // Вывод результата или его использование в расчетах
end.}
{
    # 6.3. Нахождение количества элементов массива с заданными свойствами


var
    count,          // количество
    i, n: integer;  // диапазон
begin
    count := 0;
    for i = 1 to n do begin
        if < anything[bool] > then begin
            count := count + 1;
        end;
    end;
    // Вывод результата или его использование в расчётах
end.}
{
    # 6.4. Нахождение среднего арифметического элементов массива с заданными свойствами


var
    sum,                // сумма
    count,              // количество    
    i, n: integer;      // диапазон
    average: real;      // среднее арифметическое
begin
    for i = 1 to n then begin
        sum := sum + a[i];
        count := count + 1;
    end; 
    // Подсчёт результата
    average := sum / count;
end.

//   ---   ||    ---   \\/\/\/\/\/\/\/\/\//    ---    ||    ---    \\

var 
    count,
    sum: integer;
    average: real;
begin
    if count > 0 then do begin
        average := sum / count;
        writeln(average)
    end else
        begin
            writeln('Чисел, удовлетворяющих условию, в массиве нет')
        end;       
end.}
{
    # 6.5. Изменение значений элементов массива с заданными свойствами

var
    i, n: integer;
    a: array[1..n] of integer;  // массив
begin
    for i = 1 to n do begin
        if <anything[bool]> then
            a[i] := ...
    end;
end.}
{
    # 6.6. Вывод на экран элементов массива с заданными свойствами

var
    i, n: integer;
    a: array[1..n] of integer;  // массив
begin
    for i = 1 to n do begin
        if <anything[bool]> then
            writeln(a[i]);
    end;               
end.}
{
    Недостаток: если в массиве нет элементов, удовлетворяющих заданному условию, то первый ввод будет лишним, поэтому желательно определить количество чисел в массиве, обладающих заданными свойствами, а затем оформить  фрагмет программы в следующем виде:


var
    i, n: integer;
    a: array[1..n] of integer;  // массив
begin
    if count > 0 then begin
        for i = 1 to n do begin
            if <anything[bool]> then
                writeln(a[i]);
        end
    end;
end.}
{
    # 6.7. Нахождение номеров (индексов) элементов массива с заданными свойствами

var
    i, n: integer;
begin
    for i = 1 to n do begin
        if <anything[bool]> then
            writeln(i);
    end;
end;  }
{
    # 6.8. Определение индекса элемента массива, равного заданному числу

var
    i, n,               // диапазон
    ind,                // искомый индекс
    value: integer;     // значение
begin
    for i = 1 to n then begin
        if a[i] = value then
            ind := i;
    end;
    // Вывод результата или его использование в расчётах
end.

// Минус: приведённой выше программы - при отсутствии искомого значение рещультат будет неверным

var
    i, n,               // диапазон
    ind,                // искомый индекс
    value: integer;     // значение
begin
    ind := 0;
    for i = 1 to n then begin
        if a[i] = value then
            ind := i;
    end;
    // Вывод результата:
    if ind > 0 then 
        writeln(ind)
        else
            writeln('Такого числа нет в массиве')
end.

// Минус: вне зависимости от того, насколько быстро будет найден результат, программа прочешет весь массив

var
    i, n,               // диапазон
    ind,                // искомый индекс
    value: integer;     // значение
begin
    ind := 1;
    while ind <= n and a[ind] <> value do
        ind := ind + 1
    // Вывод результата 
    if ind <= n then 
        writeln(ind)
        else
            writeln('Такого числа нет в массиве')
end. }
// Также можно решить с применением флага как в 4.8

{
    # 6.9. Определение индекса элемента, равного заданному числу, для массива, отсортированного по возрастанию

    В данном случае используется бинарный поиск. Максимальное количество итераций при нём равно [log^2(100)] + 1 (integer -- 8) 

var
    ind,                // искомый индекс
    i, n,               // диапазон
    value,              // значение
    max,                // изначальное крайнее значение
    left,               // левая граница
    right,              // правая граница
    mid: integer;       // середина
    a: array[1..n] of integer;
    find: boolean;      // найден ли искомый адрес
begin
    left := 1;
    right := 1;
    find := false;
    repeat
        mid := (left + right) div 2;
        if value > a[mid] then
           left := mid + 1  
           else 
              if value < a[mid] then 
                right := mid - 1
                else begin
                  find := true;
                  ind := mid;
                end;
    until find := true or left > right;
    if find := true then
      writeln(ind) 
      else 
        writeln('Такого числа в массиве нет')
end.}
{
    # 6.10 Определение максимального элемента в массиве


var
  max,
  i, n: integer;
  a: array[1..n] of integer;
begin
  max := a[1];
  for i = 2 to n do begin
    if a[i] > max then 
      max := a[i];
  end;
  // Вывод
end.
}
{
  # 6.11 Определение индекса максимального элемента в массиве
  
var
  max, max_ind, i, n: integer;
  a: array [1..n] of integer;


begin
  max := a[1];
  max_ind := 1;
  for i = 2 to n do 
    begin
      max := a[i];
      max_ind := i;
    end;
// Вывод
end.
}

{
  # 6.12 Определение максимального значения среди всех элементов массива, удовлетворяющих некоторому условию


var
  max, 
  X, //Известно, что оно не превыщает минимальное из чисел, для которых определяется максимальное значение
  i, n: integer;
  a: array[1..n] of integer;
begin 
  max := X;
  if <условие> then begin
      if a[i] > max then 
        max := a[i]
  end;
end.}

//   ---   ||   ---   \\
// если число заранее не известно

var
  first: boolean;
  i, n, max: integer;
begin
first := true;
  for i = 1 to n do begin
    if <условие> then
      if first := true then begin
        max := a[i];
        first := false;
      else
        if a[i] > max then 
          max := a[i]
      end
  end;
end.