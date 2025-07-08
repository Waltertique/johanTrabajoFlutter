import 'dart:io';

void main() {
  print('Ingrese un número del 0 al 12:');
  int n = int.parse(stdin.readLineSync()!);
  if (n > 12) {
    print('El factorial es infinito');
  } else {
    int f = 1;
    for (int i = 1; i <= n; i++) {
      f *= i;
    }
    print('El factorial de $n es $f');
  }
}