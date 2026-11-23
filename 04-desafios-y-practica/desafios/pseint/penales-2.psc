//==========================================================================
// Algoritmos y Estructuras de Datos - UTN FRRe (Ing. en Sistemas)
// Desafío de clase - Suma de números hasta un 0 (PSeInt, post-test)
// Versión ejecutable en PSeInt de ../penales-opcion-2.pseudo
//==========================================================================

Algoritmo Desafio_Penales //UTILIZANDO POST-TEST Y CONDICIONAL ALTERNATIVO
	//Ambiente
	Definir num, cont, sum Como Entero
	Definir op Como Caracter
	//Proceso
	Escribir "!Bienvenido! Este programa registra los números ingresados y calcula la suma de todos ellos."
	Escribir "¿Desea Continuar? - S/N"
	Leer op

	Si op = "S" Entonces
		Escribir "Por favor, introduzca un número"
		Leer num
		cont:= 0
		sum:= 0
		Repetir
			Escribir "Ha introducido el número: ", num
			cont:= cont + 1
			sum:= sum + num
			Escribir "Ingrese un nuevo número"
			Leer num
		Hasta Que num=0

		Escribir "Finalizado: se ha introducido el 0"
		Escribir "La cantidad de números introducidos durante la ejecución del programa fue de: ", cont
		Escribir "La suma de todos ellos es de: ", sum
	SiNo
		Escribir "Ok!, nos vemos en la próxima"
	FinSi
FinAlgoritmo
