uses crt;
var
n: integer;
a: array [0..9] of integer;

function d(a: array of integer;n:integer):integer;
begin
     if n > 0 then
     begin
          d:=n;
     end
     else
     begin
         d:=d(a,n-1);
         //write(a[n]);
     end;
end;


begin
    for n:= 1 to  10 do
     begin
          a[n]:= n ;
     end;
     for n:= 1 to  10 do
     begin
          writeln('',a[n],'');
     end;

     write('la cantidad de digitos de n es: ',d(a,n-1));
     readkey;
end.
