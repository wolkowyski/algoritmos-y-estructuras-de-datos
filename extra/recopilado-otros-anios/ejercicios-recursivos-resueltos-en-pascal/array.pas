uses crt;
var
a:array [1..10] of integer;
i,n:integer;
//buscar un elemento de un array de forma recursiva

function buscar(a: array of integer; i,n:integer): boolean;
begin
       if i = 0 then
       begin
           buscar := FALSE;
       end
        else
          begin
            if a[i] = n then
               begin
                      buscar:= TRUE;
                end
                else
                 begin
                      buscar:= buscar(a, i -1 ,n);
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
     writeln('El numero ', n ,' esta: ', buscar(a, 10, n));

     readkey;
end.
