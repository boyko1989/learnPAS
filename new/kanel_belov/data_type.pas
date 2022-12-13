program data_type;
type
	rainbow = (
		rred, rorange, ryellow, rgreen,
	rblue, rindigo, rviolet
	);

	traffik = (
		kred, kyellow, kgreen
	);

	digit10 = 0..9;
	latin = 'A'..'Z';
var
	d: digit10;
	ch: latin;
	lowlight: rainbow; 
begin
	d := 8;
	ch := 'S';
	lowlight := rred;
	writeln(d, ' ', ch, ' ', lowlight);
end.
