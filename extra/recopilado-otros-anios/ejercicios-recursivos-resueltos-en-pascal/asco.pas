uses crt;
var
n: integer;
//aux : integer;

function pot(n:integer): boolean;
begin
     if n >= 2 then
     begin
          if (n mod 2 = 0) then
          begin
               pot:= pot(n div 2);
          end
          else
              pot:= false ;
     end
     else
         begin
              if n <> 0 then
              begin
                   pot:= true;
              end

         end;

end;

begin
     writeln('ingrese un numero');
     readln(n);
     writeln('cumple el numero',pot(n));
     //writeln('ingrese 2');
     //readln(aux);
     //writeln('es verdad',pot(n -2 ,aux));
     readkey;
end.

