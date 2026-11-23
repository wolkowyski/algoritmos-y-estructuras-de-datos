
var
   arr: array [1..20] of integer;
   n: integer;

function enc(arr: array of integer; n: integer): integer;
begin
     if n = 0 then
     begin
       enc:= 0;

     end
     else
         begin
           if n mod 2 = 0  then
           begin
                enc:=   enc(arr , n - 1) + arr[n];
           end;
          { else
               begin
                   enc:= enc(a, n - 1, x);
               end;}

         end;
end;

begin
   for n:= 1 to 20 do
   begin
       arr[n]:= n
   end;
   for n:= 1 to 20 do
   begin
       writeln('', arr[n]);
   end;

   writeln(' ', enc(arr,n));
      //writeln('Ingrese un numero '); read(n);

end.

