/*
 * Algoritmos y Estructuras de Datos - UTN FRRe
 * Búsqueda en arreglos: lineal pura, lineal con centinela y binaria.
 *
 * Traducción a C de los métodos de ../01-guia-de-trabajos-practicos/3-arreglos/3.7.pseudo
 * (las posiciones se muestran de 1 a N, como en el pseudocódigo).
 *
 * Compilar: gcc -Wall -o busqueda busqueda.c
 * Uso:      busqueda [valor]      (si no se pasa, busca 35)
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define N 10

/* 1. LINEAL PURA: recorre todo el arreglo; encuentra también los repetidos.
 *    El éxito se trata dentro del ciclo y el fracaso afuera. */
static void lineal(const int a[], int n, int buscado) {
    bool encontrado = false;
    printf("Lineal pura:    ");
    for (int i = 0; i < n; i++) {
        if (a[i] == buscado) {
            printf("posición %d  ", i + 1);
            encontrado = true;
        }
    }
    if (!encontrado)
        printf("no está");
    printf("\n");
}

/* 2. LINEAL CON CENTINELA: corta en cuanto lo encuentra. Como el arreglo
 *    está ordenado, también corta al pasar el valor buscado. */
static void centinela(const int a[], int n, int buscado) {
    int i = 0;
    while (i < n && a[i] < buscado)
        i++;
    printf("Con centinela:  ");
    if (i < n && a[i] == buscado)
        printf("posición %d\n", i + 1);
    else
        printf("no está\n");
}

/* 3. BINARIA: compara con el del medio y descarta la mitad que no puede
 *    contenerlo. EL ARREGLO TIENE QUE ESTAR ORDENADO. */
static int binaria(const int a[], int n, int buscado, int *comparaciones) {
    int izq = 0, der = n - 1;
    *comparaciones = 0;
    while (izq <= der) {
        int centro = (izq + der) / 2; /* div: división entera */
        (*comparaciones)++;
        if (a[centro] == buscado)
            return centro;
        if (buscado < a[centro])
            der = centro - 1;
        else
            izq = centro + 1;
    }
    return -1;
}

int main(int argc, char *argv[]) {
    const int a[N] = {1, 7, 7, 12, 19, 35, 42, 64, 73, 88}; /* ordenado */
    int buscado = (argc > 1) ? atoi(argv[1]) : 35;
    int comparaciones;

    printf("Arreglo:");
    for (int i = 0; i < N; i++)
        printf(" %d", a[i]);
    printf("\nBusco el %d\n\n", buscado);

    lineal(a, N, buscado);
    centinela(a, N, buscado);

    int pos = binaria(a, N, buscado, &comparaciones);
    if (pos >= 0)
        printf("Binaria:        posición %d (%d comparaciones)\n", pos + 1, comparaciones);
    else
        printf("Binaria:        no está (%d comparaciones)\n", comparaciones);

    return 0;
}
