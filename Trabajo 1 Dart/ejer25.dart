import 'dart:io';

void main() {
  print('¿Cuántos números desea ingresar?');
  int x = int.parse(stdin.readLineSync()!);
  List<int> numeros = [];

  for (int i = 0; i < x; i++) {
    print('Ingrese número $i:');
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  print('¿Orden ascendente o descendente?');
  String? orden = stdin.readLineSync();

  if (orden == 'ascendente') {
    numeros.sort();
  } else {
    numeros.sort((a, b) => b.compareTo(a));
  }

  print('Números ordenados: $numeros');
}