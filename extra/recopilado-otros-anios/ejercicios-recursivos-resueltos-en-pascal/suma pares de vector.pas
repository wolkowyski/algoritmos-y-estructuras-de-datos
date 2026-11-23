uses crt;
var
i:integer;
a:array [1..10] of integer;

function suma_par(a:array of integer; i:integer):integer;
begin
      if i mod 2 = 0 then
      begin
      //
           suma_par:= 0;
      end
      else
      //
          if i mod 2 = 1 then
          begin
          //
              suma_par:= suma_par(a,i+1)+ a[i];
          end
          else
              begin
              //
                   suma_par:= suma_par(a,i+1);
              end
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
     write(' suma de pares es: ', suma_par (a,1));
     readkey;
end.

