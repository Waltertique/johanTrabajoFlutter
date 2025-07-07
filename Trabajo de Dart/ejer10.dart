import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese el radio del cilindro:');
  double radio = double.parse(stdin.readLineSync()!);

  print('Ingrese la altura del cilindro:');
  double altura = double.parse(stdin.readLineSync()!);

  if (radio <= 0 || altura <= 0) {
    print('Los valores deben ser mayores que 0');
    return;
  }

  double area = 2 * pi * pow(radio, 2) + 2 * pi * radio * altura;

  double volumen = pi * pow(radio, 2) * altura;

  print('Área total: $area unidades cuadradas');
  print('Volumen: $volumen unidades cúbicas');
}