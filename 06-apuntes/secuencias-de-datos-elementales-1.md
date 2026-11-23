# Secuencias de datos elementales (1)

SECUENCIA DE DATOS ELEMENTALES

**�Qu� es?**

Una secuencia de datos elementales enes un conjunto de datos relacionados entre si que se almacena en memoria externa y deben cumplir con ciertas caracter�sticas

**Caracteristicas**

Toda secuencia de datos debe poseer un primer elemento

Relacion de sucesi�n: todos los lementos excepto el ultimo, van a preceder a otro, todo elemento excepto el primero es sucesor de alguien

Toda secuencia debe poseer un ultimo elemento

**Fin de la secuencia**

Debe estar definido un **indicador de fin** de secuencia

Esto puede ser un elemento de la secuencia, una marca, o conocer cantidad de elementos de la secuencia

Secuencia de Datos Indefinidas: no se conoce la cantidad de elementos a tratar, por lo tanto, la marca de fin no se trata

Secuencia de Datos Definidas: si se conoce la cantidad de elementos a tratar, por lo tanto, el �ltimo elemento tratado define tambi�n la marca de fin

Clasificacion

**DE ACUERDO AL TIPO DE DATOS QUE CONTIENEN�**

**Seg�n su contenido**

De datos elementales:

-N�mericas

-Caracteres

De Regisdtro

DE ACUERDO A LA CANTIDAD DE ELEMENTOS QUE CONTIENEN

Seg�n Su procesamiento

-Definidas

-Indefinidas: pueden ser puras e impuras

SECUENCIAS INDEFINIDAS PURAS: todos los elementos son de la misma especie o tipo (incluyendo la marca de fin)� Se tratan con estructuras post test (pq se tratan todos los elementos)

SECUENCIAS INDEFINIDAS IMPURAS: son aquellas secuencias donde existe u elemento extra�o que no debe ser tratado y el cual indica el fin de la secuencia� se trata con un pre-test (pq se tratan todos los elementos excepto la marca de fin)

Num�rico: puedo operar matem�ticamente

Car�cter: no puedo operar matem�tica

Definida: conozco la cantidad

Indefinida: no conozco la cantidad

Pura: se trata tambi�n al elemento de fin, todos los elementos son iguales

Impura: no se trata al elemento de fin, es diferente a todos los dem�s

04 PSEUDOC�DIGO

�Como defino en el ambiente?

var: Secuencia de (tipo\_dato); ----> puede ser numerico o car�cter

c: (tipo\_dato) ---> debe ser la misma que alamacena la secuencia

La secuencialidad de estas estructuras de datos admite el uso de ciertas acciones predefinidas para su procesamiento de forma tal de asegurar el aceso secuencial a sus elemtnos

ARR

AVZ

CREAR(salida)

CERRAR(salida) ---> crea la marca de fin

ESCRIBIR(variable)

ESCRIBIR(nombre\_var\_secuencia, var)
