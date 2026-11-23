# Preguntas para el final teórico

Preguntas - Final Teor�a

**grales.**

**- �Qu� pregunta encubierta hay en la estructura manejada por contador?**

Si (i<>tope)

**- �Cu�ndo conviene usar cierta t�cnica para resolver un algoritmo?**

Arreglos: Cantidad fija que no va a cambiar en el tiempo

Listas: Se necesita la posibilidad de crecimiento y/o decrecimiento

�rboles:

**- �Cu�les son las diferencias entre paso por valor y paso por referencia de par�metros?**

**Paso por valor:**

* Se pasa una copia del valor.
* Los cambios dentro de la subacci�n no afectan la variable original.

**Paso por referencia:**

* Se pasa el valor original
* Los cambios dentro de la subacci�n afectan directamente la variable original.

En la c�tedra utilizamos paso por valor

**�rboles / listas**

**- �Cu�l es la diferencia entre un �rbol y una lista doblemente enlazada?**

Su definici�n en el ambiente es igual, la diferencia esta en como se implementa en el algoritmo, los enlaces, etc.

**- �Porque una lista tiene una definici�n recursiva?**

Porque los punteros internos apuntan hacia la misma estructura de lista

**- �Porque no se puede hacer de manera iterativa el recorrido de un �rbol?**

* En una estructura lineal, como un arreglo o una lista, cada elemento tiene un sucesor claro y definido. Puedes usar un bucle (iteraci�n) para moverte secuencialmente de un elemento al siguiente hasta llegar al final.
* En un �rbol, cada nodo puede tener m�ltiples hijos (sub�rboles). Esto crea una estructura ramificada donde no hay un camino �nico y predecible para recorrer todos los nodos. Un bucle simple no puede manejar esta ramificaci�n.

La **recursividad** es la herramienta ideal para recorrer �rboles porque refleja su estructura inherente.

1. **Caso base:** Cuando llegas a un nodo hoja (sin hijos), el recorrido de ese sub�rbol termina.
2. **Caso recursivo:** Para cada nodo no hoja, aplicas el mismo algoritmo de recorrido a sus sub�rboles izquierdo y derecho.

**- �Las listas son iterativas?**

**arreglos**

**- �Que es un arreglo grande?**

Depender� del contexto espec�fico y de los recursos disponibles

**recursividad**

**- �Cu�l es la diferencia entre el uso de una funci�n recursiva o iterativa?**

**complejidad**

**- �Cu�l es la diferencia al calcular memoria entre estructuras est�ticas y din�micas?**

**- �Porque en el registro podes preveer cuanta memoria ocupa y en las listas no?**

**- Comparar los tiempos en dos estructuras**
