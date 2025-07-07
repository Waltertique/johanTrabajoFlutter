import 'dart:io';

void main() {
  print('¿Cuántos números de la serie Fibonacci desea ver?');
  int n = int.parse(stdin.readLineSync()!);
  int a = 0, b = 1;
  for (int i = 0; i < n; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}