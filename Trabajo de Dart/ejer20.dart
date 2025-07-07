import 'dart:io';

void main() {
  print('Ingrese un número:');
  String numero = stdin.readLineSync()!;
  print('Tiene ${numero.length} dígitos');
}