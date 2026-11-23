# Resumen para el final (1)

Listas Simples

Inserci�n Simple

Tratamiento de Archivos

Definici�n en el ambiente

REGISTROS

Registro\_Archivo = Registro

nombre:= AF(15)

apell:= AF(20)

edad:= N(2)

domicilio:= AF(30)

fecha\_nac:= Formato\_Fecha

FinRegistro

Formato\_Fecha = Registro

dia:= 1..31

mes:= 1..12

anio:= N(4) o� 1900..2024

FinRegistro

ARCHIVO

Archivo\_Index: archivo de Registro\_Archivo indexado u ordenado por X reg

RegIndex: Registro de Registro\_Archivo

CORTE DE CONTROL

Tratamiento de elemento mayor y menor

Ambiente

Mayor: entero

Proceso

mayor:= arreglo[i]

Si mayor > arreglo[i] entonces

mayor:= arreglo[i]

FinSi

Definici�n de arreglos de mas de 1 dimension o con registros (a los que llamamos vectores)

Vector = Registro

Nombre: AF(15)

Apellido: AF(20)

Edad: N(2)

FinRegistro

Arreglo1: arreglo de [1..x] de Vector
