 uses crt;
var
i,n:integer;
a:array [1..10] of integer;

function suma_par(a:array of integer; n,i:integer):integer;
begin
      if i <= n then
      begin
          if i mod 2 = 0 then
          begin
              suma_par:= suma_par(a,i+1,n)+ a[i];
          end
          else
              suma_par:= suma_par(a,i+1,n);
          end
       end
       else
       begin
           if i = n then
           begin
                if n mod 2 = 0 then
                begin
                     suma_par:= a[i];
                end
                else
                    suma_par:= 0;
                end
        end
       end;
end;

begin

     write('ingrese cuantos elementos quiere en su array');
     read(n);
     for i:= 1 to  n do
     begin
          a[i]:= i ;
     end;
     for i:= 1 to  n do
     begin
          writeln('',a[i],'');
     end;
     write(' suma de pares es: ', suma_par (a,i));
    readkey;
end.

