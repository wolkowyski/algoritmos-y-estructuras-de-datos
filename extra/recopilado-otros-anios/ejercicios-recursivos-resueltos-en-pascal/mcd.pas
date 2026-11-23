uses crt;
var
a,b:integer;

function mcd(a,b:integer):integer;
begin
     if b = 0 then
     begin
          mcd:=a;
     end
     else
         begin
              mcd:= mcd(b,a mod b);
          end
      end;





begin
     write('ingrese dos numeros');
     read(a);
     read(b);
     write('el mcd es : ',mcd(a,b));
     readkey;
     end.
