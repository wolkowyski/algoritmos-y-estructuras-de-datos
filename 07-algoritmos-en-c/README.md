# Algoritmos en C

Los esquemas principales de la materia, pasados del pseudocódigo a **C** para poder compilarlos y ver cómo funcionan. Cada programa sigue la misma lógica (y los mismos nombres) que su versión en pseudocódigo.

| Programa | Qué hace | Pseudocódigo |
|---|---|---|
| [`ordenamiento.c`](ordenamiento.c) | Selección, inserción e intercambio (burbuja) sobre el mismo arreglo | [`ordenamiento-teoria.pseudo`](../01-guia-de-trabajos-practicos/3-arreglos/ordenamiento-teoria.pseudo) |
| [`busqueda.c`](busqueda.c) | Búsqueda lineal pura, con centinela y binaria (cuenta las comparaciones) | [`3.7.pseudo`](../01-guia-de-trabajos-practicos/3-arreglos/3.7.pseudo) |
| [`corte_de_control.c`](corte_de_control.c) | Corte de control por país y día sobre [`ventas.txt`](ventas.txt) | [`2.2-corte-de-control-teoria.pseudo`](../01-guia-de-trabajos-practicos/2-secuencias-y-archivos/2.2-corte-de-control-teoria.pseudo) |
| [`listas.c`](listas.c) | Listas simples: carga apilada, encolada y ordenada, búsqueda y eliminación | [`4.0-operaciones-basicas.pseudo`](../01-guia-de-trabajos-practicos/4-listas/4.0-operaciones-basicas.pseudo) |

## Compilar y ejecutar

```
gcc -Wall -o ordenamiento ordenamiento.c
./ordenamiento

gcc -Wall -o busqueda busqueda.c
./busqueda 35

gcc -Wall -o corte_de_control corte_de_control.c
./corte_de_control ventas.txt

gcc -Wall -o listas listas.c
./listas
```

## Del pseudocódigo a C

| Pseudocódigo | C |
|---|---|
| `A: arreglo [1..N] de entero` | `int a[N];` (los índices van de `0` a `N-1`) |
| `Para i:= 1 a N hacer` | `for (i = 0; i < n; i++)` |
| `x div y` | `x / y` con enteros |
| `Leer(Arch, Reg)` / `FDA(Arch)` | `fscanf(...)` y su valor de retorno |
| `Nuevo(p)` / `Disponer(p)` | `malloc(sizeof(Nodo))` / `free(p)` |
| `*p.dato` (o `p^.dato`) | `p->dato` |
| `nil` | `NULL` |
