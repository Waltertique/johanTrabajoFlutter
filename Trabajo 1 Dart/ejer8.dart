import 'dart:io';
import 'dart:math';

void main(){
  print("Menu de operciones");
  print("--------------------");
  print("1-suma");
  print("2-resta");
  print("3-multiplicacion");
  print("4-divicion");
  print("5-modulo");
  print("6-cuadrado");
  print("7-raiz cuadrada");
  print("8-potencia");
  print("9-porcentaje");
  print("10-numero aleatorio");
  print("-------------------");

  stdout.write("Elija una opcion (escriba el numero): ");
  int numero =int.parse(stdin.readLineSync()!);

  if(numero > 10 || numero < 1){
    print("opcion no valida");
  }
  else if(numero == 1){
    stdout.write("Escriba el numero1: ");
    double num1 =double.parse(stdin.readLineSync()!);

    stdout.write("Escriba el numero2: ");
    double num2 =double.parse(stdin.readLineSync()!);

    var total = num1+num2;
    print("La suma del numero $num1 + $num2 es de: $total");
  }
  else if(numero == 2){
    stdout.write("Escriba el numero1: ");
    double num1 =double.parse(stdin.readLineSync()!);

    stdout.write("Escriba el numero2: ");
    double num2 =double.parse(stdin.readLineSync()!);

    var total = num1-num2;
    print("La resta del numero $num1 - $num2 es de: $total");
  }
  else if(numero == 3){
    stdout.write("Escriba el numero1: ");
    double num1 =double.parse(stdin.readLineSync()!);

    stdout.write("Escriba el numero2: ");
    double num2 =double.parse(stdin.readLineSync()!);

    var total = num1*num2;
    print("La multiplicacion del numero $num1 * $num2 es de: $total");
  }
  else if(numero == 4){
    stdout.write("Escriba el numero1: ");
    double num1 =double.parse(stdin.readLineSync()!);

    stdout.write("Escriba el numero2: ");
    double num2 =double.parse(stdin.readLineSync()!);

    var total = num1/num2;
    print("La divicion del numero $num1 / $num2 es de: $total");
  }
  else if(numero == 5){
    stdout.write("Escriba el numero1: ");
    double num1 =double.parse(stdin.readLineSync()!);

    stdout.write("Escriba el numero2: ");
    double num2 =double.parse(stdin.readLineSync()!);

    var total = num1%num2;
    print("El residuo del numero $num1 / $num2 es de: $total");
  }
  else if(numero == 6){
    stdout.write("Escriba el numero1: ");
    double num1 =double.parse(stdin.readLineSync()!);

    var total = num1*num1;
    print("El cuadrado del numero $num1 es de: $total");
  }
  else if(numero == 7){
    stdout.write("Escriba el numero1: ");
    double num1 =double.parse(stdin.readLineSync()!);

    var total = sqrt(num1);
    print("La raiz cuadrada del numero $num1 es de: $total");
  }
  else if(numero == 8){
    stdout.write("Escriba la base: ");
    double num1 =double.parse(stdin.readLineSync()!);

    stdout.write("Escriba el exponente: ");
    double num2 =double.parse(stdin.readLineSync()!);

    var total = pow(num1, num2);
    print("La potencia del numero $num1 con exponente $num2 es de: $total");
  }
  else if(numero == 9){
    stdout.write("Escriba el numero: ");
    double num1 =double.parse(stdin.readLineSync()!);

    stdout.write("Escriba el porcentaje: ");
    double num2 =double.parse(stdin.readLineSync()!);

    var total = (num2/100)*num1;
    print("El $num2% de $num1 es de: $total");
  }
  else if(numero == 10){
    var random = Random();
    int numero = random.nextInt(100);
    print("su numero ramdom es $numero");
  }
}