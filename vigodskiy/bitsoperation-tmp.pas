program bitsoperation;

var
    first{, second}: integer;

procedure dec2bin(deci: integer);

var 
    deci_div, deci_mod, i: Integer; 
    binary, binary_rl, bin_res: string; 

begin    

    while(deci > 1) do 
  
    begin 

        {binary:='';
        bin_res:='';}
    
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

        {writeln('binary - 0 ', binary);}
        
        if deci_div = 1 then 
            binary += '1';

        writeln('binary - 1 ', binary);
      
    end;

    writeln('bin_res - 1 ', bin_res);
    writeln('binary - 2 ', binary);

    for i:=length(binary) downto 1 do bin_res += binary[i];

    writeln('bin_res - 2 ',bin_res);

end;

{======= START =======}

begin

    writeln('Демонстрация битовых операций');
    writeln();
    write('Введите первое число ');
    read(first);
    {write('Введите второе число ');
    read(second);}

    dec2bin(first);

end.
