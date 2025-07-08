import 'dart:io';

void main() {
  List<List<String>> productos = [
    ['1', 'Pan', '2000', 'no'],
    ['2', 'Leche', '3500', 'si'],
    ['3', 'Queso', '5000', 'si'],
    ['4', 'Arroz', '3000', 'si'],
    ['5', 'Huevos', '6000', 'no'],
    ['6', 'Galletas', '2500', 'no'],
    ['7', 'Agua', '1500', 'no'],
    ['8', 'Jugo', '2700', 'no'],
    ['9', 'Arepa', '2200', 'no'],
    ['10', 'Yogurt', '4000', 'si']
  ];

  List<List<String>> factura = [];
  int item = 1;

  while (true) {
    print('Digite el ID del producto (1-10):');
    String id = stdin.readLineSync()!;
    var producto = productos.firstWhere((p) => p[0] == id);

    print('¿Cuántas unidades desea llevar?');
    int cantidad = int.parse(stdin.readLineSync()!);
    int valorUnidad = int.parse(producto[2]);
    bool conIVA = producto[3] == 'si';
    double iva = conIVA ? valorUnidad * 0.19 * cantidad : 0;
    double total = (valorUnidad * cantidad) + iva;

    factura.add([
      item.toString(),
      producto[0],
      producto[1],
      cantidad.toString(),
      valorUnidad.toString(),
      iva.toStringAsFixed(2),
      total.toStringAsFixed(2)
    ]);

    item++;
    print('¿Desea otro producto? (si/no)');
    if (stdin.readLineSync() != 'si' || item > 10) break;
  }

  print('Factura:');
  print('[Ítem, ID, Producto, Cantidad, Valor unidad, IVA, Total]');
  for (var fila in factura) {
    print(fila);
  }
}