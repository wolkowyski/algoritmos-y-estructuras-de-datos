
Program BusquedaBinaria;


const

INICIAL=1;
FIN=100;

type

Cliente= array [INICIAL..FIN] of integer;

var

estructura:Cliente;

procedure rellenar (VAR estructura:Cliente);
var i,t :integer;

 begin
 t:=0;
 for i:=INICIAL to FIN do
     begin
     estructura[i]:=t;
     t:=t+5;
      end;
  end;
  
procedure mostrar (estructura:cliente);
var i:integer;
begin
    for i:=INICIAL to FIN do
     write (estructura[i],' '); 
 end;

function BuscarDato(e:cliente;d:integer):integer;

var 
izq,der,medio: integer;

begin
izq:=INICIAL;
der:=FIN;
BuscarDato:=0;

repeat
 medio:=(izq+der) div 2;
 if d= e[medio] then
  BuscarDato:=medio
 else
   if d<e[medio] then
    der:=medio-1
     else
    izq:=medio+1; 
until (izq>der) or (BuscarDato<>0)
end;





begin

rellenar (estructura);
mostrar (estructura);
writeln;

if BuscarDato(estructura,10)<>0 then

  writeln('el elemento buscado esta en la posicion:',BuscarDato(estructura,10))
else
   writeln ('no se encontro el elemento');

end. 
   





