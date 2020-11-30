program sapog_300; 

uses crt;
Procedure Zastavka;
Begin
ClrScr;
GoToXY(30,10);Write('**************************');
GoToXY(30,11);Write('*        ALL_SAPOG       *');
GoToXY(30,12);Write('*     Автор: p_boyko     *');
GoToXY(30,13);Write('*    Дата: 20.11.2020    *');
GoToXY(30,14);Writeln('**************************');
Delay(5000);
ClrScr;
End;

procedure hello;
begin
ClrScr;
GoToXY(20,10);Write('*****************************************');
GoToXY(20,11);Write('*  Данная программа - зародыш СУБД      *');
GoToXY(20,12);Write('*                                       *');
GoToXY(20,13);Write('*  Она выполняет исключительно          *');
GoToXY(20,14);Write('*  демонстрационную миссию              *');
GoToXY(20,15);Write('*                                       *');
GoToXY(20,16);Write('*  Дописав её, автор будет считать себя *');
GoToXY(20,17);Write('*  постигшим основы программирования    *');
GoToXY(20,18);Writeln('*****************************************');
Delay(10000);
ClrScr;
end;

const
  KIRZ = 10;
  CHRM = 10;
  YALW = 10;
  MIN_PAR = 5;
  RIGH = 15;

var
  par_c, par_k, par_y, par_all, 
  count,
  KZ, CH, YL,
  all, all_right,
  kir_right, chr_right, yal_right,
  j, k, i: integer;

begin
   Zastavka;
   hello;
     // Нужно доказать, что из имеющихся сапог можно составить по меньшей мере 50 пар
  
     // Высчитать минимум правых для каждого вида сапог
     count := 0;
  for i := 0 to KIRZ do begin
     kir_right := KIRZ - i;
     
     for j := kir_right to CHRM do begin
        chr_right := CHRM - j;
        
        for k := chr_right to YALW do begin 
           yal_right := YALW - k;
           
           all_right := kir_right + chr_right + yal_right;
           
           KZ := KIRZ div 2;
           CH := CHRM div 2;
           YL := YALW div 2;
           
           if kir_right < KZ then 
              par_k := kir_right
              else 
                 par_k := KIRZ - kir_right;
                
           if yal_right < YL then
              par_y := yal_right
              else 
                 par_y := YALW - yal_right;
               
           if chr_right < CH then 
              par_c := chr_right
              else 
                 par_c := CHRM - chr_right;
                 
           par_all := par_k + par_c + par_y;
       
           if (all_right <= RIGH) and (par_all >= MIN_PAR) and (par_k < KZ) and (par_c < CH) and (par_y < YL) then begin
              writeln('При ', kir_right, ' правых кирзовых, ', chr_right, ' правых хромовых, ', yal_right, ' правых яловых ', 'будет ', par_all, ' пар');
             count := count + 1;
           end;
     
        end;
        
     end;
     
   end;
     writeln('Вариантов удовлетворяющих условию задачи - ', count, ' штук.')
end.
