uses crt;
var
n: integer;

function par(n:integer):boolean;
begin
     {if n < 10 then
     begin
          if n mod 2 <> 0 then
          begin
          par:= false;
          end
     end
     else }
         {if n mod 10 < 10 then
            begin
            if n mod 2 = 0 then
            begin
                 par:=true;
            end
            else
            begin
                 par:= false;
            end;
         else
         begin
         par:= par( n div 10);
         end;}
         if n  < 1 then
         begin
              par:= true;
         end
         else
             if n = 1 then
             begin
                  par:= false;
             end
             else
             par:= par(n-2);
end;


begin
     write('ingrese un numero');
     read(n);
     write('es par: ', par(n));
     readkey;
end.
