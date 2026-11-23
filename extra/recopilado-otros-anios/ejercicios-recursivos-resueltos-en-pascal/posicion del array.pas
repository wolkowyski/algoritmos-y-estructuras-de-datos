uses crt;
var
a:array [0..9] of integer;
i,n:integer;

function pos(a: array of integer; n :integer): integer;
begin
     if n <> 0 then
     begin
        if a[n] mod 2 = 0 then
        begin
              pos:= n;
        end
        else
            begin
                 pos:= pos(a,n-1);
            end;
     end;
end;

begin
     for i:= 1 to  10 do
     begin
          a[i]:= i ;
     end;
     for i:= 1 to  10 do
     begin
          writeln('',a[i],'');
     end;
     writeln('Ingrese un numero ');
     read(n);
     writeln('El numero ', n ,' esta en la posicion: ', pos(a, n));

     readkey;
end.
