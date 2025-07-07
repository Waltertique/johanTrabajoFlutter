import 'dart:io';
void main(){
  stdout.write("Ingrese un Numero: ");
  int num1= int.parse(stdin.readLineSync()!); 

  stdout.write("Ingrese otro numero: ");
  int num2 = int.parse(stdin.readLineSync()!);

  var suma = num1+num2;

  print("La suma de $num1 + $num2 es: $suma");
}