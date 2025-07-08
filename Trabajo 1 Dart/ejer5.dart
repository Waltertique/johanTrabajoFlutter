import 'dart:io';
void main(){
  stdout.write("Ingrese un Numero: ");
  int num1= int.parse(stdin.readLineSync()!); 

  stdout.write("Ingrese otro numero: ");
  int num2 = int.parse(stdin.readLineSync()!);

  var total = num1*num2;

  print("El producto del número $num1 con el número $num2 es: $total");
}