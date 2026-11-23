# 3er Parcial - Modelo RIOT (enunciado)

**EJERCICIO N� 1**

La empresa RIOT desea realizar una asignaci�n de sus equipos clientes a determinados servidores que brindan su servicio. Para ello cuenta con un archivo:

**Cliente** (no est� ordenado por ning�n campo)

|  |  |  |
| --- | --- | --- |
| NombreCliente: AN(45) | Localizaci�n: �LAN�,�EUW�,�LAS� | Nivel: 1..500 |

Y una lista circular <u>simplemente</u> <u>encadenada</u> de servidores, con el siguiente formato:

**Servidores**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Servidor:  N(10) | Localizaci�n:  �LAN�,�EUW�,�LAS� | Estado:  �Libre�, �En mantenimiento� | CantUsuarios:  0..10 | Latencia:  1..1500 |

Realizar la asignaci�n de los clientes a los servidores de la siguiente manera:

1. Por cada cliente, asignarlo a un servidor de la lista, siempre y cuando el servidor no est� en mantenimiento y no supere los 10 usuarios. Actualizar la cantidad de usuarios que posee cada servidor. Dicha asignaci�n deber� guardarse en una lista con los siguientes datos: **Nombre del cliente, Servidor, Localizaci�n y Nivel**.
   <u>Consideraci�n</u>: Determinar el/los tipo/s de lista/s que mejor se apliquen a la resoluci�n del problema, teniendo en cuenta que se necesita mostrar los clientes empezando por el �ltimo en ser asignado (no hace falta hacer el algoritmo de recorrido).
2. Una vez realizado el proceso anterior, con los servidores que queden, generar una lista doblemente encadenada con los servidores libre y que tengan menos de 10 usuarios, ordenada de forma creciente por su latencia.

**EJERCICIO N� 2**

La empresa RIOT desea realizar una asignaci�n de sus clientes a determinados servidores que utilizan su servicio. Para ello cuenta con un archivo:

**Cliente** (no est� ordenado por ning�n campo)

|  |  |  |
| --- | --- | --- |
| NombreCliente: AN(45) | Localizaci�n: �LAN�,�EU�,�LAS� | Nivel: 1..500 |

Y una lista circular *<u>simplemente</u>* *<u>encadenada</u>* de servidores, con el siguiente formato:

**Servidores**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Servidor:  N(10) | Localizaci�n:  �LAN�,�EU�,�LAS� | Estado:  �Libre�, �En mantenimiento� | CantUsuarios:  0..10 | Latencia:  1..1500 |

Realizar la asignaci�n de los clientes a los servidores de la siguiente manera:

1. Por cada cliente, asignarlo a un servidor de la lista, siempre y cuando el servidor no est� en mantenimiento y no supere los 10 usuarios. Actualizar la cantidad de usuarios que posee cada servidor. Dicha asignaci�n deber� guardarse en una lista simplemente encadenada con Nombre del cliente, Servidor, Localizaci�n y Nivel, ordenada por Nivel del cliente.
   <u>Consideraci�n</u>: Determinar el/los tipo/s de lista/s que mejor se apliquen a la resoluci�n del problema, teniendo en cuenta que se necesita mostrar los clientes empezando por el primero en ser asignado.
2. Una vez realizado el proceso anterior, con los servidores que queden, generar una lista doblemente encadenada con los servidores libre y que tengan menos de 10 usuarios, ordenada de forma creciente por su latencia.
