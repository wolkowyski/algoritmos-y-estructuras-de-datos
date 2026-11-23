uses crt;
var
n:integer;

function par(n:integer):boolean;
begin
     if n = 0 then
     begin
          par := true;
     end
     else
         if n = 1 then
         begin
              par:= false;
         end
         else
             begin
                   par := par(n - 2);
             end;

end;

begin
     writeln('ingrese un numero');
     read(n);
     writeln('el numero ', n ,' es par ', par(n));
     readkey;
end.
