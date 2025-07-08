import 'dart:io';

void main() {
  print('Ingrese un número para ver su tabla:');
  int numero = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}
