# Resumen para el final (2): listas

LISTAS

REPASO

REPASO MIERCOLES

Listas

Accion carga ordenada es

Ambiente

Prim, P, Q, A: puntero a nodo

Nodo: registro

dato: �.

prox: puntero a nodo

fin

Valor: (igual que dato)

Algoritmo

Prim:= nil; A:= nil;

ingresar (valor)

Mientras valor <> tope hacer

Nuevo (P)

P^.dato:= valor

Q:= prim

Mientras (Q<> nil) y (Q^.dato< valor) hacer

A:= Q

Q:= Q^.prox

Fin\_mientras

Si A=nil entonces

p^.prox:=Prim ;

Prim:= P

Contrario

p^.prox:= q

a^.prox:= p

Fin\_si

Ingresar (valor)

Fin mientras

Fin Acci�n
