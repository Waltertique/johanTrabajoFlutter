import 'dart:io';
void main(){
  stdout.write("Ingrese su nombre: ");
  String? nombre = stdin.readLineSync();

  stdout.write("Ingrese su sexo: ");
  String? sexo = stdin.readLineSync();

  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su salario (con centavos): ");
  double salario = double.parse(stdin.readLineSync()!);

  stdout.write("¿Tiene vehículo de transporte? (sí/no): ");
  String? tieneVehiculo = stdin.readLineSync();

  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: $salario");
  print("¿Tiene vehículo de transporte?: $tieneVehiculo");
}