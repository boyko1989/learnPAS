program bitsoperation;
var
    first{, second}: integer;
    first_bin: string;

function dec2bin(deci: integer): string;

var 
    deci_div, deci_mod, i{, result}: integer; 
    binary, binary_rl, bin_res: string; 
begin
    while(deci > 1) do 
  
    begin 
    
        deci_div := deci div 2; 
        deci_mod := deci mod 2; 
        
        if deci_mod = 0 then begin
            binary_rl := '0';
        end
        else begin
            binary_rl := '1';
        end;
        
        deci := deci_div; 
        binary += binary_rl;
        
        if deci_div = 1 then 
            binary += '1';
      
    end;

    for i:=length(binary) downto 1 do dec2bin += binary[i];

    {Val(bin_res, result);}

end;

{======= START =======}

begin

    writeln('Демонстрация битовых операций');
    writeln();
    write('Введите первое число ');
    read(first);
    {write('Введите второе число ');
    read(second);}    

    first_bin:=dec2bin(first);

    writeln(first_bin);

end.
