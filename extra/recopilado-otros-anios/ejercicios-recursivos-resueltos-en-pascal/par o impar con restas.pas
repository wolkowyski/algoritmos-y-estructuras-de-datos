uses crt;
var
n: integer;
a: array [0..9] of integer;

function inv(a: array of integer; n:integer): array of integer;
begin
     if n > 0 then
     begin
          write(a[n]);
     end
     else
     begin
         inv(a,n-1);
         write(a[n]);
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
     readkey;
end.
