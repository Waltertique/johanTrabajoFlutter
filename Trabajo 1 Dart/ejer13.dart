import 'dart:io';

void main() {
  print('Nombre del artículo:');
  String? nombre = stdin.readLineSync();

  print('Valor por unidad:');
  double valor = double.parse(stdin.readLineSync()!);

  print('Cantidad a llevar:');
  int cantidad = int.parse(stdin.readLineSync()!);

  print('¿Es de la canasta familiar? (si/no):');
  String? canasta = stdin.readLineSync();

  double total = valor * cantidad;
  if (canasta != 'si') {
    total = total * 1.19;
  }

  print("Total a pagar: $total");
}