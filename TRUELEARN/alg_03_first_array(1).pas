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
}

var
    ind,                // искомый индекс
    max,                // изначальное крайнее значение
    left,               // левая граница
    right,              // правая граница
    mid: integer;       // середина
begin
    left := 1;
    right := 1;
    repeat
        
    until (ind );

end.