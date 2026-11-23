# Teoría para el 2do parcial - Archivos

**ARCHIVO**

**<u>Concepto</u>**: Es una estructura de datos que colecciona datos homog�neos y que se encuentran almacenados en una memoria externa permanente. La estructura de un fichero se caracteriza porque su cardinalidad es infinita. Por esta raz�n no hace falta dar la longitud del fichero, pero su cardinalidad es potencialmente infinita por la capacidad de la memoria externa. A todo fichero hay que darle nombre y tipo.

**<u>Organizaci�n:</u>** Es la manera en c�mo van a ser almacenados los datos dentro de un fichero. La organizaci�n es permanente, ya que una vez definida no puede cambiarse.

**<u>Acceso:</u>** Es la manera en la que se van a leer (recuperar) los registros de un fichero.

**<u>Clasificaci�n:</u>**

|  |  |
| --- | --- |
| Por su **organizaci�n**: | Por su **acceso**: |
| * Secuenciales. ? Acceso secuencial. * No secuenciales:   + Relativos. ? Acceso secuencial y directo   + Indexados. ? Acceso secuencial, directo y din�mico | * Secuencial. * Directo. * Din�mico o mixto |

PROCESOS CON ARCHIVOS

Diferencia entre corte y padr�n

Si se solicita que un archivo est� ordenado por cierto campo, entonces tenemos un padr�n. Un proceso Corte de Control es un padr�n con totales parciales. Es necesario, para hacer el corte, que el archivo est� ordenado por clave compleja. El total final se obtiene con el padr�n. Los totales parciales, con el corte de control.

Concepto de clave

La clave es un dato dentro del registro que permite identificar un�vocamente un dato, dado que no existen dos datos iguales en el archivo. Una clave es simple cuando es un campo contenido. Una clave es completa cuando es campo continente.

�Qu� condiciones se tienen que dar para qu� un archivo sea correcto?

Debe cumplir dos condiciones:

**<u>Ser consistente</u>**: Que la informaci�n que se est� guardando coincida con el formato usado en la definici�n. Leer un dato desde un archivo o pantalla y verificar que cumpla con las caracter�sticas de la salida. Dicho proceso se debe realizar con la carga de datos.

**<u>Ser congruente</u>**: Se verifica la consistencia de cada elemento consigo mismo. Se compara a un elemento con alg�n otro. Un archivo es consistente grueso cuando el dato es correcto. Se comparan los datos de un mismo registro y se observa si se cumplen. Compara, por ejemplo, que un valor est� dentro del rango dado.

El **apareo o mezcla** es el proceso en el cual intervienen al menos dos ficheros de entrada, que deben ser combinados para obtener uno de salida. Existe una clave que sirve como conector entre los archivos de entrada. Esta mezcla puede ser directa o indirecta.

En la **mezcla directa** todos los ficheros intervinientes tienen el mismo formato de registro, y el n�mero de registros que poseer� el fichero de salida es la sumatoria de los registros de los ficheros de entrada.

En la **mezcla indirecta**, de todos los ficheros intervinientes hay uno que se considera de mayor prioridad y es el que maneja el ciclo de mezcla, los restantes pueden ser de la misma forma del anterior o distintos y la salida adopta la forma del fichero de mayor prioridad, una mezcla entre las formas intervinientes, no pudi�ndose establecer una relaci�n num�rica en funci�n de sus elementos.

Existen dos **ciclos** que nos permiten realizar la mezcla.

|  |  |
| --- | --- |
| **CICLOS INCLUYENTES: Todos los archivos de entrada son tratados en el mismo ciclo.** | **CICLOS EXCLUYENTES: Se tratan los archivos comunes en el ciclo y los no comunes fuera de �l.** |
| Mientras NO FDA(A1) o NO FDA(A2) hacer  Procesamiento\_archivos;  Fin mientras | Mientras NO FDA(A1) y NO FDA(A2) hacer  Procesamiento\_archivos;  Fin mientras  MIENTRAS NO FDA(A1) hacer Procesamiento\_loquefalta\_archivo1;  Fin mientras  MIENTRAS NO FDA(A2) hacer  Procesamiento\_loquefalta\_archivo2;  Fin mientras |

|  |  |
| --- | --- |
| **ACTUALIZACI�N SECUENCIAL** | **ACTUALIZACI�N INDEXADA** |
| El resguardo es autom�tico. (Backup autom�tico) | El resguardo es provocado. |
| No puedo modificar el archivo maestro original. (Diferido) | S� puedo modificar el archivo maestro original.  (In Situ) |

|  |  |
| --- | --- |
| **ARCHIVOS SECUENCIALES** | **ARCHIVOS INDEXADOS** |
| Poseen acceso secuencial. Para acceder al �ltimo elemento se debe acceder a todos los anteriores. | Poseen acceso secuencial y directo a cualquier registro. |
| Son estructuras est�ticas que una vez creadas no se pueden ampliar. No hace falta dar su longitud. | Son estructuras din�micas que pueden crecer o reducirse. No hace falta dar su longitud. |
| Los registros se almacenan secuencialmente en memoria con adyacencia f�sica. | Los registros se almacenan en memoria con adyacencia l�gica. |
| Para insertar un registro, hay que crear un nuevo archivo |  |

La actualizaci�n interactiva IN SITU se llama as� porque se cuenta con una terminal, ya que no existe un archivo de movimiento. Como es una terminal, aqu� se encuentra un usuario inteligente (con poder de decidir), quien corrige los errores es el usuario. Este proceso termina cuando la terminal termina de funcionar.

|  |  |
| --- | --- |
| **PROCESOS DIFERIDOS** | **PROCESOS IN SITU** |
| Los movimientos est�n en un archivo. | No existe un archivo de movimientos. Se cuenta con una terminal. |
| Los errores se corrigen cada cierto per�odo de tiempo. | Los errores los corrige el usuario inteligente. |
| Es un proceso seguro, ya que puede ser cuantificado. |  |

**<u>Caracter�stica</u>s**: Lento, seguro, diferido, batch.

**<u>Caracter�sticas</u>**: Interactivo, r�pido, inseguro, In Situ, Back Up

**<u>Referencias</u>**

#MAE: n�mero de registros existentes en el archivo maestro.

#MOV: n�mero de registros existentes en el archivo movimiento, compuesto por:

#ALTAS + #BAJAS + #MODIF

#MN: n�mero de registros grabados en el nuevo archivo maestro, compuesto por:

#MAE - #BAJAS + #ALTAS

#ALTAS: cantidad de altas correctas.

#BAJAS: cantidad de bajas correctas.

#MODIF: cantidad de modificaciones correctas.

#ALTAS\_E: cantidad de altas err�neas

#BAJAS\_E: cantidad de bajas err�neas.

#MODIF\_E: cantidad de modificaciones err�neas.

**ARREGLO**

Es una estructura de datos est�tica en la que se almacenan datos homog�neos y que se caracteriza por:

* Almacenar los elementos del arreglo en posiciones f�sicas contiguas de memoria.
* Tener un �nico nombre de variable y cada elemento se diferencia por un �ndice.
* Tener acceso directo a los elementos individuales.
* La necesidad de definir su tama�o antes de su uso.

Existen tres tipos de arreglos: unidimensionales, bidimensionales y multidimensionales.

|  |  |
| --- | --- |
|  |  |

**<u>B�squeda lineal pura:</u>** Consiste en recorrer el vector en su totalidad e ir comparando cada elemento del mismo con el elemento buscado para verificar su existencia. Este tipo de b�squeda no finaliza al encontrar la primera ocurrencia, sino que apunta a la multitud de �xitos, es decir, se encarga de tratar el elemento cada vez que lo encuentra. En caso de no encontrarlo se debe informar la no existencia del elemento.

Leer (X);

exito:= Falso;

Para i:=1 hasta n hacer

Si A[i] = X entonces

exito:= Verdadero;

Escribir (�El elemento se ha encontrado en la posici�n: �, i);

Fin si

Fin para

Si No exito entonces

Escribir (�El elemento buscado no ha sido encontrado�);

Fin si

**<u>B�squeda lineal con centinela:</u>** En este tipo de b�squeda el recorrido del vector es parcial siempre y cuando el elemento buscado no se situ� en la �ltima posici�n del mismo o no exista el mismo. La b�squeda finaliza cuando encuentra la primera ocurrencia o ante primer valor mayor que el elemento buscado (en el caso de que arreglo se encuentre ordenados). El n�mero de comparaciones como m�nimo ser� el n�mero de elementos que haya antes de encontrar el elemento buscado. Para su implementaci�n en arreglos desordenados se debe preguntar, en la cabecera del ciclo de b�squeda, si el vector en la posici�n i es distinto (�<>�) al elemento buscado. En cambio, en los arreglos ordenados, se debe colocar el s�mbolo de mayor �>� o menor �<� seg�n en qu� orden se encuentre el arreglo.

Leer (X);

i:=1;

Mientras (i < n) y (A[i] <> X) hacer

i:= i+1;

Fin mientras

Si A[i] = X entonces

Escribir (�El elemento encontrado en posici�n: �, i);

sino

Escribir (�El elemento no encontrado�);

Fin si

**<u>B�squeda binaria:</u>** Este tipo de b�squeda se basa en el principio �divide y vencer�s� y es s�lo aplicable a arreglos ordenados. Consiste en comparar el elemento central del vector con el valor buscado. Si estos no son iguales se reduce el intervalo de b�squeda a la mitad derecha o izquierda, seg�n sea el valor buscado mayor o menor que el elemento central respectivamente. Este proceso se repite reiteradamente y termina cuando se encuentra el elemento o bien cuando se anula el intervalo de b�squeda. El n�mero de comparaciones m�ximo es log2N (siendo N el tama�o del vector).

Leer (X);

Inf:=1; Sup:=N;

medio:=(Inf+Sup) div 2;

Mientras (Inf < Sup) y (A[medio] <> X) hacer

Si A[medio] < X entonces

Inf:= medio+1;

sino

Sup:= medio-1;

Fin si

medio:=(Inf+Sup) div 2;

Fin mientras

Si A[medio] = X entonces

Escribir (�El elemento se ha encontrado en la posici�n: �, medio);

sino

Escribir (�El elemento buscado no ha sido encontrado�);

Fin si

**<u>Ordenamiento por inserci�n directa</u>**: El arreglo est� divido conceptualmente en dos secuencias, una secuencia destino (1...i) y otra origen (j=i+1...n). Partiendo con i=1 e incrementando i de uno en uno, se toma el elemento j de la secuencia de origen y se transfiere a la secuencia de destino, insert�ndolo en el sitio adecuado. El proceso consiste en comparar el elemento j-�simo con su antecesor y determinar el menor de los dos, en caso de ser el j-�simo elemento el menor (en caso de ordenar de menor a mayor) se procede al intercambio de lugar de los elementos. Este proceso contin�a hasta que:

1. Se encuentra un elemento menor que la del elemento j-�simo.

2. Se alcanza el extremo izquierdo de la secuencia de destino (es decir el principio del vector).

Para i:=1 hastaA N-1 hacer

J:=i+1;

Mientras (j>1) y (A[j] < A[j-1]) hacer

AUX:=A[j]; A[j]:= A[j-1];

A[j-1]:=AUX; j:=j-1;

Fin mientras

Fin para

**<u>Ordenamiento por Selecci�n:</u>** Este m�todo se basa en los siguientes principios:

1. Encontrar el elemento menor.

2. Intercambiarlo con el primero, luego estas operaciones se repiten con los elementos n-1, n-2, etc.

En primer lugar, se recorre el arreglo desde el primer al �ltimo elemento para encontrar el menor, una vez hallado se lo intercambia con el primero del vector. Esta operaci�n se ir� repitiendo partiendo desde el primer elemento a la derecha del vector ordenado. En general, el m�todo de selecci�n directa es preferible al de inserci�n directa, aunque en los casos en los que las claves est�n inicialmente ordenadas o casi ordenadas, �ste �ltimo puede llegar a ser algo m�s r�pido.

Para i:=1 hastaA N-1 hacer

min:=i;

Para j:=i+1 hasta N hacer

Si A[j]<A[min] entonces

min:=j;

Fin si

Fin para

aux:=A[min];

A[min]:=A[i];

A[i]:=aux;

Fin para

**<u>Intercambio (Burbuja):</u>** Este algoritmo se basa en el principio de comparar e intercambiar pares de elementos adyacentes hasta que todos est�n ordenados. Se lo conoce como el m�todo de la �Burbuja� porque si se mira el arreglo como si estuviera en posici�n vertical, en vez de horizontal, y se imagina que es un tanque de agua, cada burbuja (elemento) asciende con un peso acorde a su valor. En cada pasada, una burbuja asciende hasta el nivel de peso que le corresponde. Se comparan el primer y segundo elemento del arreglo y si se encuentran desordenados se los intercambia, inmediatamente se comparan el segundo con el tercero y as� sucesivamente hasta que no se produzcan cambios en el arreglo, es decir, cuando se encuentre ordenado.

Bandera:= Falso

Mientras No Bandera hacer

Bandera := Verdadero

Para i:= 1 a n-1 hacer

Si (A[i] < A [i+1]) entonces

x := A�]

A[i] := A[i+1]

A[i+1] := x

Bandera := Falso

Fin si

Fin para

Fin mientras
