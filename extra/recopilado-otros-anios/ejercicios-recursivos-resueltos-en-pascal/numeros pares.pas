uses crt;
var
n:integer;

//calcula los numeros pares de un numero dado

function pares_num(n:integer):integer;
begin
     if n = 0 then
     begin
          pares_num:= 0;
     end
     else
         if n mod 2 = 0 then
         begin
              pares_num:= pares_num(n div 10)+1;
         end
         else
             begin
                  pares_num:= pares_num(n div 10);
             end;

end;

begin
     writeln('ingrese un numero de 2 o mas cifras');
     read(n);
     writeln('la suma de los pares es ', pares_num(n));
     readkey;
end.
