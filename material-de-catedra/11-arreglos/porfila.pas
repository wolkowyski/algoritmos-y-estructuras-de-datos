program porfila;
{programa escribe solo la fila de una matriz que desee el usuario}
uses crt;
var
matriz:array[1..10,1..10]of integer;
{declaramos la matriz cuadrada}
 i,j,fila:integer;
 BEGIN
 clrscr;
 writeln('Llenaremos una matriz de 10x10 con numeros al azar ');
 writeln('================================================== ');
 writeln();
 for i:=1 to 10 do
 begin
 if i<10
 then
 write('FILA-',i,'------->')
 else
 write('FILA-',i,'------>');
 for j:=1 to 10 do
 begin
 matriz[i,j]:=random(10);
{La función random generara números del 1 al 9 aleatorios}
 write(' ',matriz[i,j],' ');
{escribimos los elementos de la matriz}
end;
writeln();
end;
writeln();
writeln();
writeln(' CUAL FILA QUIERES VISUALIZAR ');
readln(fila);
{leemos la fila que se quiere mostrar}
if fila>10 then
writeln('esta fila no existe, el limite es 10 ')
else
begin
write('             ');
for i:=1 to 10 do
write('  ',matriz[fila,i]);
{escribimos la fila según la variable ingresada}
writeln();
end;
writeln();
writeln('================================================== ');
writeln('Gracias !!!!!!!');
readkey;
END.
