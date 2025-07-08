import 'dart:io';

void main() {
  print('MENÚ DE SUMA');
  print('1. Sin parámetros y sin retorno');
  print('2. Con parámetros y sin retorno');
  print('3. Sin parámetros y con retorno');
  print('4. Con parámetros y con retorno');
  String? opcion = stdin.readLineSync();

  if (opcion == '1') {
    sumaSinParamSinRet();
  } else if (opcion == '2') {
    print('Ingrese dos números:');
    int a = int.parse(stdin.readLineSync()!);
    int b = int.parse(stdin.readLineSync()!);
    sumaConParamSinRet(a, b);
  } else if (opcion == '3') {
    int resultado = sumaSinParamConRet();
    print('Resultado: $resultado');
  } else if (opcion == '4') {
    print('Ingrese dos números:');
    int a = int.parse(stdin.readLineSync()!);
    int b = int.parse(stdin.readLineSync()!);
    int resultado = sumaConParamConRet(a, b);
    print('Resultado: $resultado');
  }
}

void sumaSinParamSinRet() {
  print('Ingrese dos números:');
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print('Suma: ${a + b}');
}

void sumaConParamSinRet(int a, int b) {
  print('Suma: ${a + b}');
}

int sumaSinParamConRet() {
  print('Ingrese dos números:');
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  return a + b;
}

int sumaConParamConRet(int a, int b) {
  return a + b;
}