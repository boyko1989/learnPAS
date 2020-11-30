program matrix;
{
    Найти максимальный элемент для каждого столбца матриц размерностью NxN.
}

const 
    N = 10;
    M = 10;
var
    arr: array[1..N,1..M] of integer;
    max: integer;
    i,j: byte;    
begin
    randomize;
    for i:=1 to N do begin
        for j:=1 to M do begin
            arr[i,j] := random(1000);
            write(' |',arr[i,j]:4,'| ');
        end;
        writeln;
    end;
    for i:=1 to M do 
        write('--------');
    writeln;
    for j:=1 to M do begin
        max := arr[1,j];
        for i:=2 to M do
            if arr[i,j] > max then
                max := arr[i,j];
        write('  ',max:4,'  ');
    end;
    writeln;
end.