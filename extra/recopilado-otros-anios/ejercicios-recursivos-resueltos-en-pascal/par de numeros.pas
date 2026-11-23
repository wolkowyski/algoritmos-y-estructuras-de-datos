uses crt;

var
n:integer;

procedure inverso(n:integer);
begin
     if n < 10 then
     begin
          inverso(n);
     end
     else
     begin
          write(n mod 10);
          inverso(n div 10);
      end
end;

begin
write('escribe un numero');
     read(n);
     inverso(n);
     write('el numero invertido es', n);
     write('');
     readkey;
end.
