// ==========================================================================
//  Algoritmos y Estructuras de Datos - UTN FRRe (Ing. en Sistemas)
//  Laboratorio de Pascal - Práctica: velocidad de un cohete
//  Primer programa de prueba en Pascal. Compilar: fpc practica-velocidad-cohete.pas
// ==========================================================================

program CalcularVelocidadCohete;

var
  velocidadInicial, aceleracionGravedad, tiempo, velocidadFinal: real;

begin
  velocidadInicial := 500; // Velocidad inicial en metros por segundo
  aceleracionGravedad := 9.81; // Aceleración de la gravedad en metros por segundo al cuadrado
  tiempo := 40; // Tiempo en segundos

  // Fórmula para calcular la velocidad final
  velocidadFinal := velocidadInicial - (aceleracionGravedad * tiempo);

  writeln('La velocidad del cohete al cabo de 40 segundos es: ', velocidadFinal:0:2, ' m/s');
end.
