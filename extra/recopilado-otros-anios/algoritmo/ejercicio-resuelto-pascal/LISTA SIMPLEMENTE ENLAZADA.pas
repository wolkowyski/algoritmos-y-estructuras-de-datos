
program lista;


unit TADlista;

interface


const
NULO=nil; //posicion nula

type
  
  tDato=integer; // dato de la lista
  prox=^tNodo; // representa posicion de la lista

Nodo=record //nodo
  dato:tDato;
  sig:prox;
  end;
  
  Lista:prox; //tipo de lista
  
   function EsListaVacia(L:Lista):boolean;
   procedure CreaLista (var: L:lista);
   function Primera (L:Lista):Prox;
   function Siguiente(L:Lista;P:prox):Prox;
 
 
 
  function EsListaVacia(L:Lista):boolean;
  begin
  EsListaVacia:=(L=NULO);
  end;
  
  
  procedure CreaLista (var: L:lista);
 begin
 
 L:=NULO;
 
 end;
  
  function Primera(L:Lista):Prox;
  begin
  Primera:=L;
  end;
  
  function Siguiente (L:Lista;P:prox):prox
  begin
  Siguiente:=P^.sig 
  end;
  
