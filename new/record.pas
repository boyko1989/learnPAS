program rec;
type 
	CheckPoint = record
		n: integer;
		latitude, longitude: real;
		hidd: boolean;
		penalty: integer;
	end;
var
	cp: CheckPoint;
begin
	cp.n := 70;
	cp.latitude := 54.83843;
	cp.longitude := 37.59556;
	cp.hidd := false;
	cp.penalty := 30;

	writeln(cp.n)
end.
