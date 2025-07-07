import 'dart:io';

void main(){
  print("--Menu--");
  print("Amarillo = 1");
  print("Azul = 2");
  print("Rojo = 3");
  print("Escriba dos de esos numeros para saber la combinacion");

  stdout.write("Escriba el primer numero: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Escriba el primer numero: ");
  int num2 = int.parse(stdin.readLineSync()!);

  if((num1 > 3 || num1 < 1) || (num2 > 3 || num2 < 1)){
    print("Numero no valido");
  }
  else if((num1 == 1 && num2 == 1) || (num1 == 2 && num2 == 2) || (num1 == 3 && num2 == 4)){
    print("Los numero no pueden ser iguales");
  }
  else if((num1 == 1 && num2 == 2) || (num1 == 2 && num2 == 1)){
    print("La comvinacion da el color verde");
  }
  else if((num1 == 1 && num2 == 3) || (num1 == 3 && num2 == 1)){
    print("La comvinacion da el color naranja");
  }
  else if((num1 == 2 && num2 == 3) || (num1 == 3 && num2 == 2)){
    print("La comvinacion da el color violeta");
  }
}