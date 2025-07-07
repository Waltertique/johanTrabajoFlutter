import 'dart:io';
import 'dart:math';

void main() {
  print('Seleccione una figura:');
  print('1. Triángulo');
  print('2. Rectángulo');
  print('3. Círculo');
  String? opcion = stdin.readLineSync();

  if (opcion == '1') {
    
    print('Ingrese la base:');
    double base = double.parse(stdin.readLineSync()!);

    print('Ingrese la altura:');
    double altura = double.parse(stdin.readLineSync()!);

    print('Ingrese los otros 2 lados:');
    double lado1 = double.parse(stdin.readLineSync()!);
    double lado2 = double.parse(stdin.readLineSync()!);

    if (base <= 0 || altura <= 0 || lado1 <= 0 || lado2 <= 0) {
      print('Los valores deben ser mayores que 0');
      return;
    }

    double area = (base * altura) / 2;
    double perimetro = base + lado1 + lado2;

    print('Figura: Triángulo');
    print('Área: $area unidades cuadradas');
    print('Perímetro: $perimetro unidades');
  } else if (opcion == '2') {

    print('Ingrese la base:');
    double base = double.parse(stdin.readLineSync()!);

    print('Ingrese la altura:');
    double altura = double.parse(stdin.readLineSync()!);

    if (base <= 0 || altura <= 0) {
      print('Los valores deben ser mayores que 0');
      return;
    }

    double area = base * altura;
    double perimetro = 2 * (base + altura);

    print('Figura: Rectángulo');
    print('Área: $area unidades cuadradas');
    print('Perímetro: $perimetro unidades');
  } else if (opcion == '3') {

    print('Ingrese el radio:');
    double radio = double.parse(stdin.readLineSync()!);

    if (radio <= 0) {
      print('El radio debe ser mayor que 0');
      return;
    }

    double area = pi * pow(radio, 2);
    double perimetro = 2 * pi * radio;

    print('Figura: Círculo');
    print('Área: $area unidades cuadradas');
    print('Perímetro: $perimetro unidades');
  } else {
    print('Opción no válida');
  }
}