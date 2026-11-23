USES CRT;
VAR
  i:integer;
  a:array [1..10] of integer;

procedure reco(a: array of integer; i:integer);
begin
     if i > 0 then
     begin
          write(a[i]);
          reco(a,i);
     end;
end;



begin

     for i:= 1 to 10 do
     begin
          a[i]:= i;
     end;

     for i:= 1 to  10 do
     begin
          writeln(a[i]);
     end;
     write('array es: ');
     reco(a,i);
     readkey;
end.
