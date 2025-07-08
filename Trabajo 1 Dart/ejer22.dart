void main() {
  List<int> numeros = List.filled(10, 0);

  for (int i = 0; i < 10; i++) {
    numeros[i] = i + 1;
  }

  for (int i = 0; i < 10; i++) {
    print('Índice: $i, Posición: $i, Valor: ${numeros[i]}');
  }
}