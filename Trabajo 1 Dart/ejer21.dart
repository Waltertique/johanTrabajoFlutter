import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  int a = int.parse(stdin.readLineSync()!);
  print('Ingrese el segundo número:');
  int b = int.parse(stdin.readLineSync()!);

  int menor = a < b ? a : b;
  int mayor = a > b ? a : b;

  print('¿Desea ver la serie par o impar?');
  String? tipo = stdin.readLineSync();

  for (int i = menor; i <= mayor; i++) {
    if (tipo == 'par' && i % 2 == 0) {
      print(i);
    } else if (tipo == 'impar' && i % 2 != 0) {
      print(i);
    }
  }
}