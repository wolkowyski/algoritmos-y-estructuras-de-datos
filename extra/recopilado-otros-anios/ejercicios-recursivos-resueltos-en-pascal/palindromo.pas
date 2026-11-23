Program recursiva (input,output);
uses crt;
TYPE
A = array [0..49] of char;

function palindroma (A:array of char ;x,y:integer): array of char; //char array;
begin
        
        IF A[x]=A[y] then
        begin
           palindroma:=A;
        end
        else
           If A[x]=A[y] then
           begin
        palindroma:= palindroma(A,x-1,y) + palindroma(A,y);
        end;
   


END;


PROCEDURE menu ;

var
//i,j:integer;
//cadena:tcadena;

begin

j:=1;
writeln('escriba la palabra:');
readln(cadena);
i:=length(cadena);
write( 'el palndromo es ',palindroma(A,x,y));
    //writeln('es palindroma')
    //else
   // writeln('no es palindroma');

END;

BEGIN

menu;
readkey;
END.

