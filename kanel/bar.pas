{program progress_bar;
uses Crt,sysutils;
const
   PR_LONG = 38;
   TEST = 32767;
var
   i, j, count, len: integer;
   marker, beginin, endin: char;
   marker_ln, bar: string;
   // bar: array[beginin..endin] of char;
begin

   
   marker := '=';
   beginin := '<';
   endin := '>';
   bar := marker + endin;
   for i := 1 to PR_LONG do begin
     
      count := 0;
      
      for j := 1 to TEST do 
         count := count + 1;
      len := Length(bar) - 1;
      //delete(bar, 1, len);
      //writeln(bar);
      clrscr;
      marker_ln := marker_ln + marker;
      bar := beginin + marker_ln + endin;
      //delete(bar, 1, len);
     Writeln(bar);
   end;
end.}

program progressbar_Console;
uses crt,sysutils;
 
const lBar=60;//Длина бара (в символах)
bar100=100; //Максимальное значение отображаемых в баре данных
 
var i:integer;
 
procedure pBar(const cp:integer);
var 
   i,n,m:integer;
   s:string;
   s1:String;
   ch:char;
    begin
        m:=round(100/bar100*cp);
        n:=round(lBar/bar100*cp);
        s:='[]';
        s1:=' '+IntToStr(m)+' % ';
        for i:=1 to lBar do
            begin
                if i<n then ch:=#35 else ch:=#45;
                insert(ch,s,pos(']',s));
            end;
         insert(s1,s,pos('[',s)+1+(lBar div 2));
         gotoxy(1,1);writeln(s);
    end;
 
begin
  clrscr;
 for i:=1 to  bar100 do
     begin
       pBar(i);
       delay(500);
     end;
end.
