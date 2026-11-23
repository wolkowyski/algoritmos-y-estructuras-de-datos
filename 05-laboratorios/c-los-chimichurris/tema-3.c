// ==========================================================================
//  Algoritmos y Estructuras de Datos - UTN FRRe (Ing. en Sistemas)
//  Laboratorio de C (2023) - Tema 3: votación electrónica
//  Trabajo grupal "Los Chimichurris". Compilar: gcc tema-3.c -o votacion
// ==========================================================================

#include <stdio.h> // Biblioteca estandar de entrada/salida del lenguaje
#include <string.h> // Biblioteca de funciones de manipulación de cadenas de caracteres (strings)

// Definición de la estructura del arreglo
typedef struct {
    char Nombre[30];
    int Cant_Votos;
} EstructuraArreglo;

// Declaración de variables globales
EstructuraArreglo Candidatos[5];
int CantidadCandidatos[] = {1, 2, 3, 4, 5};
int MenuOpciones[] = {1, 2, 3};
int cant_votantes = 0;

// Declaración de procedimientos
void Carga_Arreglo() {
    printf("--------------------------------------------------------------------------------------------");
    printf("\n- CARGA DE ARREGLO -\n");
    printf("--------------------------------------------------------------------------------------------\n");
    printf("Bienvenido, usted ha seleccionado la opción número 1\n");
    printf("Por favor, ingrese el nombre de cada uno de los candidatos para la votación\n");

    for (int i = 0; i < 5; i++) {
        printf("Ingrese el candidato número %d: ", i + 1); // Solicita el Ingreso de los candidatos al operador
        scanf("%s", Candidatos[i].Nombre);
    }

    for (int i = 0; i < 5; i++) { // Inicializar contador de votos
        Candidatos[i].Cant_Votos = 0;
    }
}

void Mensaje_Bienvenida() {
    printf("--------------------------------------------------------------------------------------------");
    printf("\n- VOTACION ELECTRÓNICA -\n");
    printf("--------------------------------------------------------------------------------------------\n");
    printf("Bienvenido, usted ha seleccionado la opción número 2\n");
    printf("Nuestra empresa presenta una vacante en el cargo de gerente del departamento Innovación y existen 5 posibles aspirantes a cubrir dicho cargo, todos en igualdad de antecedentes\n");
    printf("Usted ha sido convocado/a para elegir a tu futuro jefe mediante nuestro nuevo sistema de sufragio electrónico\n");
    printf("Los candidatos en esta ocasión son:\n");

    for (int i = 0; i < 5; i++) {
        printf("%s\n", Candidatos[i].Nombre); // Muestra por pantalla a los candidatos disponibles
    }
}

void Votacion() {
    int voto, voto_error;

    Mensaje_Bienvenida();

    printf("\n¿A quién decide votar? (Elija entre 1-5): ");
    scanf("%d", &voto);

    if (voto >= 1 && voto <= 5) {
        Candidatos[voto - 1].Cant_Votos++;
        printf("\nMuchísimas gracias, su voto fue registrado de manera exitosa\n");
        cant_votantes++;
    } else {
        do {
            printf("\nError, el candidato número %d no existe\n", voto);
            printf("Vuelva a ingresarlo: ");
            scanf("%d", &voto_error);
        } while (voto_error < 1 || voto_error > 5); // Repite hasta que el candidato sea ingresado de manera correcta

        Candidatos[voto_error - 1].Cant_Votos++;
        printf("\nMuchísimas gracias, su voto fue registrado de manera exitosa\n");
        cant_votantes++;
    }
}

void Ranking() {
    int i, j;
    EstructuraArreglo temp;

    for (i = 1; i < 5; i++) { // Ordena el arreglo de mayor a menor en base a la cantidad de votos finales para cada candidato
        for (j = 0; j < 5 - i; j++) {
            if (Candidatos[j].Cant_Votos < Candidatos[j + 1].Cant_Votos) {
                temp = Candidatos[j];
                Candidatos[j] = Candidatos[j + 1];
                Candidatos[j + 1] = temp;
            }
        }
    }

    printf("--------------------------------------------------------------------------------------------");
    printf("\n- RANKING DE GANADORES -\n");
    printf("--------------------------------------------------------------------------------------------\n");


    for (i = 0; i < 5; i++) {
        printf("%s - Votos: %d\n", Candidatos[i].Nombre, Candidatos[i].Cant_Votos); // Emite el Ranking
    }

    printf("\n- CANDIDATO MAS VOTADO -\n");
    printf("El candidato con más votos fue: %s con un total de: %d votos\n", Candidatos[0].Nombre, Candidatos[0].Cant_Votos);

    printf("\nCantidad total de votos registrados: %d\n\n", cant_votantes);

}

int main() {
    int Menu_op;

    printf("--------------------------------------------------------------------------------------------");
    printf("\nBienvenido/a a SCAM\n");
    printf("--------------------------------------------------------------------------------------------\n");

    do {
        printf("\n- MENU DE OPCIONES -\n");
        printf("¿Qué operación desea realizar?\n");
        printf("1- Cargar los candidatos para la votación  |  2- Comenzar con la votación   |   3- Salir\n");
        scanf("%d", &Menu_op);

        if (Menu_op >= 1 && Menu_op <= 3) {
            switch (Menu_op) {
                case 1:
                    Carga_Arreglo();
                    break;
                case 2:
                    Votacion();
                    break;
                case 3:
                    break;
            }
        } else {
            printf("\nError, opción incorrecta\n");
        }
    } while (Menu_op != 3);

    printf("\nVotación Finalizada\n");
    Ranking();

    printf("--------------------------------------------------------------------------------------------\n");
    printf("\nFacultad Regional Resistencia - Universidad Tecnológica Nacional\n");
    printf("Algoritmos y Estructuras de Datos - Tema 3\n");
    printf("Programa hecho por: LOS CHIMICHURRIS\n\n");
    printf("--------------------------------------------------------------------------------------------\n");

    return 0;
}
