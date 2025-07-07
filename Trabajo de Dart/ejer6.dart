import 'dart:io';
void main(){
  stdout.write("Ingrese el numerador: ");
  int num1= int.parse(stdin.readLineSync()!); 

  stdout.write("Ingrese el denominador: ");
  int num2 = int.parse(stdin.readLineSync()!);

  if(num2==0){
    print("No se puede dividir un numero entre cero");
  }
  else{
    var total = num1/num2;
    print("La división del número $num1 entre el número $num2 es: $total");
  }
}