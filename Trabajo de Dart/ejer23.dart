import 'dart:io';

void main() {
  List<String> encabezado = ['Nombre', 'Apellido', 'Edad', 'Estado', 'Teléfono'];
  List<List<String>> datos = List.generate(4, (_) => List.filled(5, ''));

  for (int i = 0; i < 4; i++) {
    print('Ingrese datos del compañero ${i + 1}:');
    for (int j = 0; j < 5; j++) {
      print('Ingrese ${encabezado[j]}:');
      datos[i][j] = stdin.readLineSync()!;
    }
  }

  print(encabezado);
  for (var fila in datos) {
    print(fila);
  }
}