uses crt;
var
n:integer;

procedure bin(n:integer);
begin
     if (n < 2) then
     begin
        write (n);
     end
     else
     begin
        bin(n div 2);
        write(n mod 2);
     end;
end;

begin
     writeln('ingrese un numero entero');
     read(n);
     bin(n);
     readkey;

end.
