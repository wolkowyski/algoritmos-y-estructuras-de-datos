/*
 * Algoritmos y Estructuras de Datos - UTN FRRe
 * Ordenamiento: selección, inserción e intercambio (burbuja).
 *
 * Es la traducción a C de ../01-guia-de-trabajos-practicos/3-arreglos/ordenamiento-teoria.pseudo
 * En el pseudocódigo los arreglos van de 1 a N; en C van de 0 a N-1, así que
 * los Para i:= 1 a N quedan como for (i = 0; i < n; i++).
 *
 * Compilar: gcc -Wall -o ordenamiento ordenamiento.c
 */
#include <stdio.h>
#include <stdbool.h>

#define N 10

static void mostrar(const char *titulo, const int a[], int n) {
    printf("%s\t", titulo);
    for (int i = 0; i < n; i++)
        printf(" %3d", a[i]);
    printf("\n");
}

static void copiar(int destino[], const int origen[], int n) {
    for (int i = 0; i < n; i++)
        destino[i] = origen[i];
}

/* SELECCIÓN: busca el menor de la parte no ordenada y lo pone en la posición i */
static void seleccion(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        int x = a[i];
        int min = i;
        for (int j = i + 1; j < n; j++) {
            if (a[j] < x) {
                min = j;
                x = a[j];
            }
        }
        a[min] = a[i]; /* intercambio el menor con el de la posición i */
        a[i] = x;
    }
}

/* INSERCIÓN: inserta cada elemento en la parte ya ordenada, corriendo los mayores */
static void insercion(int a[], int n) {
    for (int i = 1; i < n; i++) {
        int x = a[i];
        int j = i - 1;
        while (j >= 0 && x < a[j]) { /* j >= 0 primero, para no salirme del arreglo */
            a[j + 1] = a[j];
            j--;
        }
        a[j + 1] = x;
    }
}

/* INTERCAMBIO (burbuja): repite pasadas hasta que una no haga ningún intercambio */
static void burbuja(int a[], int n) {
    bool bandera = false;
    while (!bandera) {
        bandera = true;
        for (int j = 0; j < n - 1; j++) {
            if (a[j] > a[j + 1]) {
                int aux = a[j];
                a[j] = a[j + 1];
                a[j + 1] = aux;
                bandera = false; /* hubo intercambio: hace falta otra pasada */
            }
        }
    }
}

int main(void) {
    const int original[N] = {42, 7, 19, 73, 7, 1, 88, 35, 64, 12};
    int a[N];

    mostrar("Original:", original, N);

    copiar(a, original, N);
    seleccion(a, N);
    mostrar("Selección:", a, N);

    copiar(a, original, N);
    insercion(a, N);
    mostrar("Inserción:", a, N);

    copiar(a, original, N);
    burbuja(a, N);
    mostrar("Burbuja:", a, N);

    return 0;
}
