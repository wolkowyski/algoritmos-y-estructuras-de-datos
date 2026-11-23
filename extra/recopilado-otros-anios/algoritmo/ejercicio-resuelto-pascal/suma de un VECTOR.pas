(*Desarrollar un sub programa algoritmo en LENGUAJE PASCAL O C para realizar la 
 sumatoria del contenido de un vector (recibe como parámetro) de 100 posiciones de entero.*)
 
 
 Program sumatoria;
uses CRT;
type

Cliente= array [1..5] of integer;

var
estructura:Cliente;

procedure rellenar (VAR estructura:Cliente);
var 
i:integer;

 begin
 for i:=1 to 5 do
     begin
     writeln ('ingrese valor del arreglo:');
     readln(estructura[i]); 
     end;
  end;
 
procedure sumar (VAR estructura:Cliente);
var
i,suma:integer;
begin
suma:=0;
for i:=1 to 5 do
begin
suma:=suma + estructura[i];
end;
write(suma);
end;
 
begin
rellenar (estructura);
writeln (' ');
sumar(estructura);

end.  





