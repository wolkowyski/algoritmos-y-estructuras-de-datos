# Algoritmos y Estructuras de Datos — UTN FRRe

Todo lo que hice y junté cursando **Algoritmos y Estructuras de Datos** (1er año de Ingeniería en Sistemas de Información, UTN Facultad Regional Resistencia, 2023–2026): la guía de trabajos prácticos resuelta, parciales, finales, desafíos, los laboratorios de Pascal y C, apuntes propios y el material de la cátedra.

Casi todo está escrito en el **pseudocódigo de la cátedra** (Acción / Ambiente / Proceso), tal como lo aprendimos en el ingreso y en primer año. Los laboratorios están en **Pascal** y **C**.

## Contenido

| Carpeta | Qué hay |
|---|---|
| [`01-guia-de-trabajos-practicos`](01-guia-de-trabajos-practicos) | La [guía de TP de la cátedra](https://aed-frre.github.io/) resuelta completa: los 209 ejercicios de práctica y los 66 complementarios, con la consigna de cada uno |
| [`02-parciales`](02-parciales) | 1er, 2do y 3er parcial: resoluciones, modelos, práctica y las fotos de los enunciados |
| [`03-finales`](03-finales) | Resoluciones de modelos de final, práctica, el compilado de estudio del final de febrero 2026 y los enunciados |
| [`04-desafios-y-practica`](04-desafios-y-practica) | Desafíos de clase y del campus, versiones en PSeInt y la guía de listas resuelta en el Discord del curso |
| [`05-laboratorios`](05-laboratorios) | Laboratorio de Pascal (Tema 1) y laboratorio de C grupal (Tema 3, votación electrónica) |
| [`06-apuntes`](06-apuntes) | Apuntes de clase propios: ciclos, registros, subsecuencias, archivos, preguntas para el final teórico |
| [`07-algoritmos-en-c`](07-algoritmos-en-c) | Los esquemas principales (ordenamiento, búsquedas, corte de control y listas) pasados a C, listos para compilar con `gcc` |
| [`material-de-catedra`](material-de-catedra) | Presentaciones, apuntes y guías de los profesores, ordenados por unidad |
| [`extra`](extra) | Ejercicios resueltos de otros años, como material complementario |

## Temas de la materia

1. Acciones, estados y algoritmos · tipos de datos y operadores
2. Estructuras secuenciales, condicionales y repetitivas
3. Subacciones: funciones y procedimientos
4. Secuencias de datos elementales y subsecuencias (enlazadas y jerárquicas)
5. Registros y archivos secuenciales: corte de control, mezcla y actualización secuencial
6. Archivos indexados y actualización indexada
7. Arreglos y matrices: búsqueda (lineal, centinela, binaria), ordenamiento y procesos estadísticos
8. Listas simples, dobles y circulares
9. Recursividad y árboles binarios
10. Complejidad algorítmica

## Cómo leer el pseudocódigo

Cada archivo empieza con un encabezado que dice de qué guía, parcial o final es, y cuando la consigna no está escrita en el archivo, dónde está la foto del enunciado.

```pascal
Acción Ejemplo es
    Ambiente                      // declaraciones: tipos, variables, subacciones
        Alumno = Registro
            legajo: N(5)          // N(n) numérico de n dígitos, AN(n) alfanumérico
            nota: 1..10
        FinRegistro
        Arch: Archivo de Alumno ordenado por legajo
        Reg: Alumno
    Proceso                       // el algoritmo
        Abrir E/(Arch)
        Leer(Arch, Reg)           // lectura anticipada
        Mientras No FDA(Arch) hacer
            Escribir(Reg.legajo)
            Leer(Arch, Reg)
        FinMientras
        Cerrar(Arch)
FinAcción
```

Primitivas que aparecen seguido:

- **Secuencias:** `ARR` (arrancar), `AVZ` (avanzar), `CREAR`, `ESC` (escribir), `NFDS` (no fin de secuencia).
- **Archivos:** `Abrir E/` y `Abrir /S`, `Leer`, `Escribir` / `Grabar`, `FDA` (fin de archivo), `EXISTE` (después de una lectura directa en un indexado), `HV` (*high value*, el valor centinela que se usa en las mezclas).
- **Listas:** `Nuevo(p)`, `Disponer(p)`, `nil`, `*p.campo` (es lo mismo que `p^.campo`).

Los archivos `.pseudo` se muestran con resaltado de **Pascal** (configurado en [`.gitattributes`](.gitattributes)), porque el pseudocódigo de la cátedra está basado en Pascal y GitHub no tiene un lenguaje para él.

## Revisión

Antes de subirlo revisé todo: corregí errores de lógica, completé ejercicios que habían quedado a medio hacer y agregué comentarios, sin cambiar la forma de escribir que usábamos en la cursada. Después completé la guía contra la versión publicada de la cátedra, para que no quede ningún ejercicio sin resolver. También terminé las resoluciones de finales que habían quedado a medias y revisé a fondo los ejercicios de listas del Discord; en esos archivos cada arreglo está marcado con `// corregido`.

Los laboratorios en C compilan con `gcc`. El de Pascal se compila con Free Pascal (`fpc`).

## Créditos

- Laboratorio de C — grupo **Los Chimichurris**: Gustavo Fernández Calvi, Braian Leonel Wolkowyski y Luciano García.
- El material de [`material-de-catedra`](material-de-catedra) es de los docentes de la cátedra (Prof. Diego Bolatti y equipo) y se incluye solo como referencia de estudio. Los libros completos y los videos no se incluyen.
- En [`extra`](extra) hay resoluciones de otros años que circulaban entre alumnos; las de 2022 están firmadas por su autor.
- En las fotos de los enunciados se difuminó solo el campo del nombre (y el DNI o legajo cuando estaban escritos); el resto del enunciado se ve completo.
