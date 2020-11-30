program pointer;
var
    p: ^string;
    q: ^integer;
begin
    new(p);
    new(q);
    //q := p;
    p^ := 'This is a string, which resides in the heap';
    q^ := 320;
    // dispose(p);
    // dispose(q);    
    writeln(q^);
    writeln(p^);
    new(p);
    p^ := 'This new string!';
    writeln(p^);
end.
