              uses crt;
var
i: integer;
a: array [0..9] of integer;

function d(a: array of integer;i:integer):integer;
begin
     if i >= 0 then
     begin
          write(a[i]) ;
     end
     else
     begin
         d:=d(a,i+1);
         d:= a[i];
         //write(a[n]);
     end;
end;


begin
    for i:= 1 to  10 do
     begin
          a[i]:= i;
     end;
     for i:= 1 to  10 do
     begin
          writeln('',a[i],'');
     end;

     write('invertir : ',d(a,i+1));
     readkey;
end.
