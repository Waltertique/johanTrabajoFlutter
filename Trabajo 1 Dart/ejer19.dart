import 'dart:math';

void main() {
  var random = Random();
  Set<int> numeros = {};

  while (numeros.length < 6) {
    numeros.add(random.nextInt(45) + 1);
  }

  List<int> lista = numeros.toList();
  lista.sort();
  print('Números del baloto: $lista');
}