program primer_tank;
{ Íàðèñîâàòü òàíê }
uses ptcGraph, Crt;
 
type
    Tank = class;
     name: string;  { çàäàåò èìÿ òàíêà }
     color, i: integer; { çàäàåò öâåò òàíêà }
     ax: array [0..10] of integer; { çàäàåò êîîðäèíàòû ýëåìåíòîâ òàíêà ïî Õ }
     ay: array [0..10] of integer; { çàäàåò êîîðäèíàòû ýëåìåíòîâ òàíêà ïî Y }
     { Êîíñòðóêòîðîâ â êëàññå ìîæåò áûòü ñòîëüêî, íà ñêîëüêî âåëèêî ðàçíîîáðàçèå ñîçäàâàåìûõ îáúåêòîâ }
     constructor Create;
       begin
        name:='tank';
        color:=$000000;
        ax[0]:=0;
        ay[0]:=0;
        ax[1]:=80;
        ay[1]:=40;
       end;
     constructor Create(nm: string);
       begin
        name:=nm;
        color:=$000000;
        ax[0]:=0;
        ay[0]:=0;
        ax[1]:=10;
        ay[1]:=10;
       end;
     constructor Create(nm: string; x1,y1,c1: integer);
       begin
        name:=nm;
        color:=c1;
        ax[0]:=x1+0;
        ay[0]:=y1+0;
        ax[1]:=x1+80;
        ay[1]:=y1+40;
        ax[2]:=x1+25;
        ay[2]:=y1+5;
        ax[3]:=x1+55;
        ay[3]:=y1+35;
       end;
      procedure Draw(x2,y2: integer);
       begin
          {ClrScr;}
          SetPenColor(color);
           SetPenWidth(2);
           { Îñíîâàíèå òàíêà }
            Rectangle(ax[0]+x2,ay[0]+y2,ax[1]+x2,ay[1]+y2);
           { Áàøíÿ òàíêà }
           if name='T34' then
           begin
            Rectangle(ax[2]+x2,ay[2]+y2,ax[3]+x2,ay[3]+y2);
            Rectangle(ax[3]+x2,ay[2]+y2+5,ax[3]+x2+5,ay[3]-5+y2);
           end;
           if name='Tiger' then
           begin
            Rectangle(ax[2]+x2,ay[2]+y2,ax[3]+x2,ay[3]+y2);
            Rectangle(ax[2]+x2-5,ay[2]+y2+5,ax[2]+x2,ay[3]-5+y2);
           end;
            
           SetPenWidth(1);
           { Ãóñåíèöà 1 òàíêà }
            Rectangle(ax[0]+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2,ax[1]+x2,ay[0]+y2);
            Line(ax[0]+trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+2*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+2*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+3*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+3*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+4*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+4*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+5*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+5*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+6*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+6*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+7*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+7*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+8*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+8*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+9*trunc((ax[1]-ax[0])/10)+x2,ay[0]+y2,ax[0]+9*trunc((ax[1]-ax[0])/10)+x2,ay[0]-trunc((ay[1]-ay[0])/4)+y2);
           { Ãóñåíèöà 2 òàíêà }
            Rectangle(ax[0]+x2,ay[1]+y2,ax[1]+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+2*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+2*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+3*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+3*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+4*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+4*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+5*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+5*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+6*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+6*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+7*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+7*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+8*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+8*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
            Line(ax[0]+9*trunc((ax[1]-ax[0])/10)+x2,ay[1]+y2,ax[0]+9*trunc((ax[1]-ax[0])/10)+x2,ay[1]+trunc((ay[1]-ay[0])/4)+y2);
 
           { Ñòâîë òàíêà }
           if name='T34' then
            Rectangle(ax[1]+x2+10,ay[0]+trunc((ay[1]-ay[0])/2)+y2-2,ax[3]+5+x2,ay[0]+trunc((ay[1]-ay[0])/2)+y2+2);
           if name='Tiger' then
           begin
            Rectangle(ax[0]+x2-10,ay[0]+trunc((ay[1]-ay[0])/2)+y2-2,ax[2]-5+x2,ay[0]+trunc((ay[1]-ay[0])/2)+y2+2);
            Rectangle(ax[0]+x2-10,ay[0]+trunc((ay[1]-ay[0])/2)+y2-3,ax[0]-5+x2,ay[0]+trunc((ay[1]-ay[0])/2)+y2+3);
           end;
           
           { Áàêè òàíêà }
           if name='T34' then
           begin
            Rectangle(ax[0]+x2+5,ay[2]+y2+2,ax[0]+x2+20,ay[2]+y2+12);
            Rectangle(ax[0]+x2+5,ay[2]+y2+17,ax[0]+x2+20,ay[2]+y2+27);
           end;
            if name='Tiger' then
           begin
            Rectangle(ax[3]+x2+5,ay[2]+y2+2,ax[3]+x2+20,ay[2]+y2+12);
            Rectangle(ax[3]+x2+5,ay[2]+y2+17,ax[3]+x2+20,ay[2]+y2+27);
           end;
       end;
    end;
 
var
  x1,y1,x2,y2,color,
  i,j
  : integer;
  tank1,tank2: Tank;
  key1: char;
 
 
  begin
  SetWindowCaption('Òàíêè');
 
  tank1:= Tank.Create('T34',50,50,$0000FF);
  tank2:= Tank.Create('Tiger',0,0,$000000);
  x1:=0;
  y1:=0;
  x2:=random(600);
  y2:=random(350);
  ClrScr;
   tank1.Draw(x1,y1);
   tank2.Draw(x2,y2);
  while true do
  begin
   SetPenColor($FFFFFF);
   SetPenWidth(0);
   key1:=readKey;
   if key1 = #27 then
      Exit;
   if key1 = #0 then
     begin
     key1:=readKey;
      case key1 of
        #77: begin x1:=x1-3;   ClrScr; tank1.Draw(x1,y1); tank2.Draw(x2,y2); end;
        #75: begin x1:=x1+3;   ClrScr; tank1.Draw(x1,y1); tank2.Draw(x2,y2); end;
        #72: begin y1:=y1-3;   ClrScr; tank1.Draw(x1,y1); tank2.Draw(x2,y2); end;
        #80: begin y1:=y1+3;   ClrScr; tank1.Draw(x1,y1); tank2.Draw(x2,y2); end;
      end;
     end;
  end;
end.