import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  print('¿Cuántos jugadores hay?');
  int jugadores = int.parse(stdin.readLineSync()!);
  int acumulado = 0;

  while (acumulado >= 0) {
    for (int i = 1; i <= jugadores; i++) {
      print('Jugador $i, presione ENTER para lanzar el dado');
      stdin.readLineSync();

      int primerTiro = random.nextInt(6) + 1;
      print('Primer tiro: $primerTiro');

      if (primerTiro == 1 || primerTiro == 6) {
        acumulado++;
        print('Perdió y puso una moneda al acumulado');
      } else {
        print('¿Cuánto quiere apostar? Máximo: $acumulado');
        int apuesta = int.parse(stdin.readLineSync()!);
        if (apuesta > acumulado) apuesta = acumulado;

        print('Presione ENTER para segundo tiro');
        stdin.readLineSync();
        int segundoTiro = random.nextInt(6) + 1;
        print('Segundo tiro: $segundoTiro');

        if (segundoTiro > primerTiro) {
          print('Ganó $apuesta');
          acumulado -= apuesta;
        } else {
          print('Perdió la apuesta');
          acumulado += apuesta;
        }
      }
      print('Acumulado actual: $acumulado');
      if (acumulado <= 0) {
        print('El juego terminó');
        return;
      }
    }
  }
}