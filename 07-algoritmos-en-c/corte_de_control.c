/*
 * Algoritmos y Estructuras de Datos - UTN FRRe
 * Corte de control de dos niveles (país y día) más el total general.
 *
 * Es el ejemplo de clase de
 * ../01-guia-de-trabajos-practicos/2-secuencias-y-archivos/2.2-corte-de-control-teoria.pseudo
 * El archivo de ventas es un archivo de texto (ventas.txt) con un registro
 * por línea, ordenado por país, día y cine:
 *     pais dia cine tickets
 *
 * Compilar: gcc -Wall -o corte_de_control corte_de_control.c
 * Uso:      corte_de_control [archivo]     (por defecto ventas.txt)
 */
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

typedef struct {
    char pais[11];
    int dia;
    char cine[21];
    int tickets;
} Venta;

/* "Archivo de Venta" y su registro, como variables del ambiente */
static FILE *arch;
static Venta reg;
static bool fda; /* fin de archivo */

static char res_pais[11]; /* resguardos */
static int res_dia;
static long tot_dia, tot_pais, tot_gral; /* totalizadores */

/* Leer(Arch, Reg): deja fda en verdadero cuando no hay más registros */
static void leer(void) {
    fda = fscanf(arch, "%10s %d %20s %d", reg.pais, &reg.dia, reg.cine, &reg.tickets) != 4;
}

static void corte_dia(void) { /* corte de menor nivel */
    printf("    Total del día %d: %ld\n", res_dia, tot_dia);
    tot_pais += tot_dia; /* acumulo en el nivel de arriba */
    tot_dia = 0;         /* reinicio el de este nivel */
    res_dia = reg.dia;   /* nuevo resguardo */
}

static void corte_pais(void) {
    corte_dia(); /* primero se cierra el nivel de abajo */
    printf("  Total de %s: %ld\n\n", res_pais, tot_pais);
    tot_gral += tot_pais;
    tot_pais = 0;
    strcpy(res_pais, reg.pais);
}

static void tratar_corte(void) { /* de la clave de mayor peso a la de menor */
    if (strcmp(reg.pais, res_pais) != 0)
        corte_pais();
    else if (reg.dia != res_dia)
        corte_dia();
}

int main(int argc, char *argv[]) {
    const char *nombre = (argc > 1) ? argv[1] : "ventas.txt";
    arch = fopen(nombre, "r");
    if (arch == NULL) {
        printf("No se pudo abrir %s\n", nombre);
        return 1;
    }

    leer(); /* lectura anticipada */
    if (fda) {
        printf("El archivo está vacío\n");
        fclose(arch);
        return 0;
    }
    strcpy(res_pais, reg.pais);
    res_dia = reg.dia;
    tot_dia = tot_pais = tot_gral = 0;

    while (!fda) {
        tratar_corte();
        tot_dia += reg.tickets; /* tratar registro */
        leer();
    }
    corte_pais(); /* cierra el último grupo */
    printf("Total general: %ld\n", tot_gral);

    fclose(arch);
    return 0;
}
