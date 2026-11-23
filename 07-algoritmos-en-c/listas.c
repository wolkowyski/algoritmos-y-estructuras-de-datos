/*
 * Algoritmos y Estructuras de Datos - UTN FRRe
 * Listas simplemente encadenadas: carga apilada, encolada y ordenada,
 * búsqueda y eliminación.
 *
 * Traducción a C de ../01-guia-de-trabajos-practicos/4-listas/4.0-operaciones-basicas.pseudo
 *   Nuevo(p)     -> p = malloc(sizeof(Nodo))
 *   Disponer(p)  -> free(p)
 *   nil          -> NULL
 *   *p.dato      -> p->dato
 *
 * Compilar: gcc -Wall -o listas listas.c
 */
#include <stdio.h>
#include <stdlib.h>

typedef struct Nodo {
    int dato;
    struct Nodo *prox;
} Nodo;

static Nodo *nuevo(int valor) {
    Nodo *p = malloc(sizeof(Nodo));
    if (p == NULL) {
        printf("Sin memoria\n");
        exit(1);
    }
    p->dato = valor;
    p->prox = NULL;
    return p;
}

static void mostrar(const char *titulo, const Nodo *prim) {
    printf("%-22s", titulo);
    for (const Nodo *p = prim; p != NULL; p = p->prox)
        printf(" %d", p->dato);
    printf("\n");
}

static void liberar(Nodo **prim) {
    while (*prim != NULL) {
        Nodo *p = *prim;
        *prim = p->prox;
        free(p);
    }
}

/* Carga apilada: el nuevo queda primero (la lista sale al revés) */
static void apilar(Nodo **prim, int valor) {
    Nodo *p = nuevo(valor);
    p->prox = *prim;
    *prim = p;
}

/* Carga encolada: el nuevo va al final; ult evita recorrer la lista */
static void encolar(Nodo **prim, Nodo **ult, int valor) {
    Nodo *p = nuevo(valor);
    if (*prim == NULL)
        *prim = p;
    else
        (*ult)->prox = p;
    *ult = p;
}

/* Carga ordenada: me detengo en el primer nodo mayor o igual */
static void insertar_ordenado(Nodo **prim, int valor) {
    Nodo *p = nuevo(valor);
    Nodo *anterior = NULL, *q = *prim;
    while (q != NULL && q->dato < valor) { /* q != NULL siempre primero */
        anterior = q;
        q = q->prox;
    }
    p->prox = q;
    if (anterior == NULL) /* va primero (lista vacía o es el menor) */
        *prim = p;
    else
        anterior->prox = p;
}

/* Búsqueda en una lista ordenada: corta al pasar el valor */
static Nodo *buscar(Nodo *prim, int buscado) {
    Nodo *p = prim;
    while (p != NULL && p->dato < buscado)
        p = p->prox;
    return (p != NULL && p->dato == buscado) ? p : NULL;
}

/* Eliminación: busco guardando el anterior y desengancho el nodo */
static int eliminar(Nodo **prim, int buscado) {
    Nodo *anterior = NULL, *p = *prim;
    while (p != NULL && p->dato != buscado) {
        anterior = p;
        p = p->prox;
    }
    if (p == NULL)
        return 0;
    if (anterior == NULL) /* era el primero */
        *prim = p->prox;
    else
        anterior->prox = p->prox;
    free(p);
    return 1;
}

int main(void) {
    const int datos[] = {42, 7, 19, 73, 1, 35};
    const int n = sizeof(datos) / sizeof(datos[0]);
    Nodo *pila = NULL, *cola = NULL, *ult = NULL, *ordenada = NULL;

    for (int i = 0; i < n; i++) {
        apilar(&pila, datos[i]);
        encolar(&cola, &ult, datos[i]);
        insertar_ordenado(&ordenada, datos[i]);
    }

    printf("Datos en orden de carga: 42 7 19 73 1 35\n\n");
    mostrar("Carga apilada:", pila);
    mostrar("Carga encolada:", cola);
    mostrar("Carga ordenada:", ordenada);

    printf("\nBuscar 19: %s\n", buscar(ordenada, 19) ? "está" : "no está");
    printf("Buscar 20: %s\n", buscar(ordenada, 20) ? "está" : "no está");

    eliminar(&ordenada, 1);  /* el primero */
    eliminar(&ordenada, 35); /* uno del medio */
    eliminar(&ordenada, 73); /* el último */
    printf("Eliminar 99: %s\n", eliminar(&ordenada, 99) ? "eliminado" : "no estaba");
    printf("\n");
    mostrar("Sin 1, 35 y 73:", ordenada);

    liberar(&pila);
    liberar(&cola);
    liberar(&ordenada);
    return 0;
}
