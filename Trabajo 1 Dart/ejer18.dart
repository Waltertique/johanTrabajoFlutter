import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  int a = int.parse(stdin.readLineSync()!);
  print('Ingrese el segundo número:');
  int b = int.parse(stdin.readLineSync()!);
  print('Ingrese el tercer número:');
  int c = int.parse(stdin.readLineSync()!);

  List<int> lista = [a, b, c];
  print('¿Orden ascendente o descendente?');
  String? orden = stdin.readLineSync();

  if (orden == 'ascendente') {
    lista.sort();
  } else {
    lista.sort((x, y) => y.compareTo(x));
  }

  print('Ordenado: $lista');
}