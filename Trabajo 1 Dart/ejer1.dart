void main() {
  // Declaración de constantes
  const String nombre = "Johan Madrigal";
  const String sexo = "Masculino";
  const int edad = 19;
  const double salario = 710000.2132;
  const bool tieneVehiculo = false;

  // Impresión en pantalla usando concatenación e interpolación
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: $salario");
  print("¿Tiene vehículo de transporte?: ${tieneVehiculo ? 'Sí' : 'No'}");
}