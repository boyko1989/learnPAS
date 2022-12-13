program sequerence;
{
    # 4.1 Суммирование всех чисел последовательности

var
    i,n,            // диапазон 
    a,              // "материал" для подсчёта
    sum, : integer; // искомая сумма
begin
    sum := 0;
    for i = 1 to n do 
    begin
        // Ввод очередного числа 
        sum := sum + a;
    end;
        // Вывод результата или его использование в рачсчётах 
end.
}

{
    # 4.2 Суммирование чисел последовательности, удовлетворяющих некоторому условию

var
    i,n,            // диапазон 
    a,              // "материал" для подсчёта
    sum, : integer; // искомая сумма
begin
    sum := 0;
    for i = 1 to n do
    begin
        if < anything[bool] >
        begin
            // Ввод очередного числа a
            sum := sum + a;
        end;        
    end;
        // Вывод результата или его использование в рачсчётах 
end.}

{
    # 4.3 Подсчёт количества чисел последовательности, удовлетворяющих некоторому условию

var
    i,n,                // диапазон 
    a,                  // "материал" для подсчёта
    count, : integer;   // искомое количество
begin
    count := 0;
    for i = 1 to n do
    if < anything[bool] >
        begin
            // Ввод очередного числа a
            count := count + 1;
        end;  
        // Вывод результата или его использование в рачсчётах 
end.
}

{
    # 4.4. Определение среднего арифметического чисел последовательности, удовлетворяющих некоторому условию


var
    i,n,            // диапазон 
    a,              // "материал" для подсчёта
    sum,            // искомая сумма
    count: integer; // искомое количество
begin
    sum := 0;
    count := 0;
    for i = 1 to n do
    begin
        if < anything[bool] >
        begin
            // Ввод очередного числа a
            sum := sum + a;
            count := count + 1;
        end;        
    end;
        // Подсчёт среднего арифметического !!! ПОСЛЕ !!! цикла
        // Вывод результата или его использование в рачсчётах 
end.}

{
    # 4.5. Определение порядкового номера некоторого значения в заданной последовательности

var
    i,n,            // диапазон 
    a,              // "материал" для подсчёта    
    ind: integer;   // значение
begin    
    begin
        for i = 1 to n do
        begin
            // Ввод очередного числа a
            if < anything[bool] >
            begin
                ind := i;
            end;
            // Вывод результата или его использование в рачсчётах 
            if ind <> 0 then 
                // Вывод  номера значения , ind
                else // Такого числа нет ;
        end;        
    end;
end. }

{
    # 4.6. Определение максимального значения в последовательности чисел 

var
    max,            // максимальное значение последовательности
    a,              // "материал" для подсчёта
    i, n: integer;  // диапазон
begin    
// Ввод первого числа
max := a;
for i = 2 to n do
    // Ввод очередного числа a
    if a > max then
    begin
        max := a;
    end;
    // Вывод результата или его использование в рачсчётах     
end.
//--------------------}

{
    # 4.7. Определение порядкового номера максимального значения в последовательности чисел

    Алгоритм решения задачи аналогичен приведённому выше, но кроме очередного "претендента на звание" максимального числа следует запоминать также и его порядковый номер

var
    max,            // максимальное значение последовательности
    num_max,        // номер искомого максимального элемента
    a,              // "материал" для подсчёта
    i, n: integer;  // диапазон
begin    
// Ввод первого числа
max := a;
num_max := 1;
for i = 2 to n do
    // Ввод очередного числа a
    if a > max then
    begin
        max := a;
        num_max := i;
    end;
    // Вывод результата или его использование в рачсчётах     
end. //--------------}

{
    # 4.8. Определение максимального значения чисел последовательности, удовлетворяющих некоторому условию

    Возможны два случая:

        1) точно известно, что числа, удовлетворяющие заданному условию, в обрабатываемой последовательности имеются;

        2) чисел, удовлетворяющих заданному условию, в обрабатываемой последовательности может и не быть.


var
    X,          // число, о котором заранее известно, что оно не 
                // превышает минимальное значение их исходных чисел
    max,        // максимальное значение последовательности
    i, n,       // диапазон
    a: integer; // "материал" для подсчёта
begin
    max := X;
    for i = 1 to n do 
    begin
        if < anything[bool] > then
            < Встретилось число, удовлетворяющее заданному условию >
            else
                if a > max then begin
                    max := a;         
    end;
end.
 
// -----  Если же значение заранее не известно ------ //

var
    first: boolean;     // определяется впервые ли встретилось в 
                        // последовательности число
    X,                  // число, о котором заранее известно, что оно не 
                        // превышает минимальное значение их исходных чисел
    max,                // максимальное значение последовательности
    i, n,               // диапазон
    a: integer;         // "материал" для подсчёта
begin
    first := true;
    for i = 1 to n do 
    begin
        // Ввод очередного числа последовательности а
        // ....
        if < anything[bool] > then
            // Встретилось число, удовлетворяющее заданному условию
            if first = true then begin
                max := a; // Принимаем его в качестве макстимального значения
                first := false // Следующие такие числа встречаются не впревые
            end
                else // Если оно встретилось не впервые
                    if a > max := a;
    end;
end.}