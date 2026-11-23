# 1er Parcial - Julio 2022 - Tema 1

APELLIDO Y NOMBRE:�������������������������������������.. CURSO:�����. **TEMA 1**

**Ejercicio 1** � (x puntos)

Se acerca el Mundial de f�tbol de Qatar 2022 y los organizadores desean conocer las estad�sticas de reservas realizadas a cada uno de los estadios de f�tbol que ser�n sedes del torneo mundial durante la primera jornada de partidos.

Para esto se cuenta con informaci�n de todas las reservas realizadas a cada una de las plazas de los estadios en una secuencia de datos con la siguiente estructura:

NombreEstadio%Capacidad#**TipoReserva**RazonSocial%AsientosReservados\_**TipoReserva**RazonSocial%AsientosReservados\_@NombreEstadio#**TipoReserva**RazonSocial%AsientosReservados\_**TipoReserva**RazonSocial%AsientosReservados\_@...@FDS

En donde:

* NombreEstadio: cantidad de caracteres indefinida, indica el nombre del estadio
* Capacidad: dos caracteres que indican la capacidad de espectadores del estadio en miles de espectadores
* TipoReserva: 1 caracter que indica qui�n realiza la reserva, posibles valores:

E (Empresa) - P (Particular) - Y (Protocolo)

* RazonSocial: el nombre de quien realiza la reserva
* AsientosReservados: cantidad de caracteres indefinida, teniendo en cuenta la siguiente estructura
  + 3 caracteres con el formato CAA: donde C indica la zona (A..Z) y AA indica el n�mero de asiento (2 caracteres)

<u>Escribir un algoritmo que permita:</u>

1. Informar, para cada estadio:
   1. La cantidad total de reservas.
   2. El porcentaje de ocupaci�n del estadio.
2. Generar una secuencia de salida que contenga el nombre de cada estadio y todos los asientos reservados para un tipo de reserva particular (que debe ingresar el usuario). Separar las reservas realizadas para cada estadio por el car�cter �@�. Modelo de salida:

NombreEstadio%AsientosReservados@NombreEstadio%AsientosReservados@....@FDS

**Ejercicio 2** � (x puntos)

Adem�s, en pos de analizar la capacidad hotelera de Qatar, el Ministerio de Turismo, solicit� a todos los hoteles el estado habitacional de cada cadena de hoteles.

Luego realiz� la carga de toda esa informaci�n en un archivo secuencial con la siguiente estructura:

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| codigo\_cadena AN(15) | nivel\_hotel (1�5) | codigo\_hotel N(4) | nombre\_hotel AN(50) | es\_ciudad\_sede  (Booleano) | cantidad\_habitaciones  N(4) |

Ejemplos de cadenas hoteleras: sheraton - hilton - NH.

El archivo se encuentra ordenado por los campos codigo\_cadena y nivel.

El Ministerio organiz� un concurso para todos los alumnos de ISI que hayan aprobado Algoritmos y Estructuras de datos, ofreciendo un premio en d�lares para quien desarrolle la mejor soluci�n.

La consigna solicita:

1. generar un informe que muestre por nivel, cadena y total general: Total de habitaciones de hoteles que se encuentren en ciudades sedes del Mundial de f�tbol.
2. generar un fichero de salida que contenga totales por cadena, con el siguiente formato:

codigo\_cadena(AN(15)) - cantidad\_habitaciones

APELLIDO Y NOMBRE:�������������������������������������.. CURSO:�����. **TEMA 2**

**Ejercicio 1** � (x puntos)

Se acerca el Mundial de f�tbol de Qatar 2022 y los organizadores desean conocer las estad�sticas de reservas realizadas a cada uno de los estadios de f�tbol que ser�n sedes del torneo mundial durante la primera jornada de partidos.

Para esto se cuenta con informaci�n de todas las reservas realizadas a cada una de las plazas de los estadios en una secuencia de datos con la siguiente estructura:

NombreEstadio%Capacidad#**TipoReserva**RazonSocial%AsientosReservados\_**TipoReserva**RazonSocial%AsientosReservados\_@NombreEstadio#**TipoReserva**RazonSocial%AsientosReservados\_**TipoReserva**RazonSocial%AsientosReservados\_@...@FDS

En donde:

* NombreEstadio: cantidad de caracteres indefinida, indica el nombre del estadio
* Capacidad: dos caracteres que indican la capacidad de espectadores del estadio en miles de espectadores
* TipoReserva: 1 caracter que indica qui�n realiza la reserva, posibles valores:

E (Empresa) - P (Particular) - Y (Protocolo)

* RazonSocial: el nombre de quien realiza la reserva
* AsientosReservados: cantidad de caracteres indefinida, teniendo en cuenta la siguiente estructura
  + 3 caracteres con el formato CAA: donde C indica la zona (A..Z) y AA indica el n�mero de asiento (2 caracteres)

<u>Escribir un algoritmo que permita:</u>

1) Informar, para cada estadio:

1. La cantidad de reservas de cada tipo (Empresa-Particular-Protocolo).
2. La cantidad de reservas realizadas en una zona en particular del estadio, que lo ingresa el usuario

2) Generar una secuencia de salida de enteros, donde cada elemento indicar� la cantidad de reservas para cada estadio.

**Ejercicio 2** � (x puntos)

Adem�s, en pos de analizar la capacidad hotelera de Qatar, el Ministerio de Turismo, solicit� a todos los hoteles el estado habitacional de cada cadena de hoteles.

Luego realiz� la carga de toda esa informaci�n en un archivo secuencial con la siguiente estructura:

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| codigo\_cadena AN(15) | nivel\_hotel (1�5) | codigo\_hotel N(4) | nombre\_hotel AN(50) | es\_ciudad\_sede  (Booleano) | cantidad\_habitaciones  N(4) |

Ejemplos de cadenas hoteleras: sheraton - hilton - NH.

El archivo se encuentra ordenado por los campos codigo\_cadena y nivel.

El Ministerio organiz� un concurso para todos los alumnos de ISI que hayan aprobado Algoritmos y Estructuras de datos, ofreciendo un premio en d�lares para quien desarrolle la mejor soluci�n.

La consigna solicita:

1. generar un informe que muestre por nivel, cadena y total general: Total de hoteles con m�s de 300 habitaciones que se encuentren en ciudades sedes del Mundial de futbol.
2. generar un fichero de salida que contenga los siguientes datos de los hoteles que se encuentran en ciudades sede del Mundial de futbol: codigo\_cadena, nivel\_hotel, codigo\_hotel, nombre\_hotel y cantidad\_habitaciones.
