uses crt;
var
n: integer;
//a: array [0..9] of integer;

function d(n:integer):integer;
begin
     if n < 10 then
     begin
          d:=1;
     end
     else
     begin
         d:= d(n mod 10)+d(n div 10);
         //write(a[n]);
     end;
end;


begin
    { for n:= 1 to  10 do
     begin
          a[n]:= n ;
     end;
     for n:= 1 to  10 do
     begin
          writeln('',a[n],'');
     end;  }
     write('ingrese un numero');
     read(n);
     write('la cantidad de digitos de n es: ',d(n));
     readkey;
end.
