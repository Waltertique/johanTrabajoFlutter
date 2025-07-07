import 'dart:io';

void main() {
  print('¿Cómo desea ingresar los datos?');
  print('1. Por ángulos');
  print('2. Por lados');
  String? opcion = stdin.readLineSync();

  if (opcion == '1') {

    print('Ingrese el ángulo 1:');
    double a1 = double.parse(stdin.readLineSync()!);
    print('Ingrese el ángulo 2:');
    double a2 = double.parse(stdin.readLineSync()!);
    print('Ingrese el ángulo 3:');
    double a3 = double.parse(stdin.readLineSync()!);

    double suma = a1 + a2 + a3;

    if (suma != 180) {
      print('Los ángulos no forman un triángulo');
      return;
    }

    if (a1 == a2 && a2 == a3) {
      print('Triángulo equilátero');
    } else if (a1 == a2 || a1 == a3 || a2 == a3) {
      print('Triángulo isósceles');
    } else {
      print('Triángulo escaleno');
    }
  } else if (opcion == '2') {
    
    print('Ingrese el lado 1:');
    double l1 = double.parse(stdin.readLineSync()!);
    print('Ingrese el lado 2:');
    double l2 = double.parse(stdin.readLineSync()!);
    print('Ingrese el lado 3:');
    double l3 = double.parse(stdin.readLineSync()!);


    List<double> lados = [l1, l2, l3];
    lados.sort();

    if (lados[0] + lados[1] <= lados[2]) {
      print('Los lados no forman un triángulo');
      return;
    }

    if (l1 == l2 && l2 == l3) {
      print('Triángulo equilátero');
    } else if (l1 == l2 || l1 == l3 || l2 == l3) {
      print('Triángulo isósceles');
    } else {
      print('Triángulo escaleno');
    }
  } else {
    print('Opción no válida');
  }
}