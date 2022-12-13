Program zas;
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

begin
    Zastavka;
    hello;
end.