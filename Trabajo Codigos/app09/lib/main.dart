import 'package:flutter/material.dart';
   void main(List<String> args) {
     runApp(Principal());
   }
   class Principal extends StatelessWidget {
    const Principal({super.key});
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: "SENA | CEET",
         home: HomePrincipal(),
       );
     }
   }
   class HomePrincipal extends StatefulWidget {
     const HomePrincipal({super.key});
     @override
     State<HomePrincipal> createState() => _HomePrincipalState();
   }
   class _HomePrincipalState extends State<HomePrincipal> {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.green,
           foregroundColor: Colors.white,
           title: Text("Ficha | 2925960"),
         ),
         body: ListView.builder(
           itemCount: sitiosTuristicos.length,
           itemBuilder: (BuildContext context, int index) {
             return ListTile(
               trailing: Icon(Icons.arrow_circle_right_outlined),
               leading: CircleAvatar(
                 backgroundImage:
                     NetworkImage(sitiosTuristicos[index]["foto_monumento"]),
               ),
               title: Text(sitiosTuristicos[index]["nombre"]),
               subtitle: Text(sitiosTuristicos[index]["ubicacion"] +
                   " " +
                   sitiosTuristicos[index]["fecha_lanzamiento"]),
               onTap: () {
                 showModalBottomSheet(
                   isScrollControlled: true,
                   context: context,
                   builder: (context) {
                     return Scaffold(
                       appBar: AppBar(
                         backgroundColor: sitiosTuristicos[index]
                             ["color_distintivo"],
                         title: Text(sitiosTuristicos[index]["nombre"]),
                       ),
                       body: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: ListView(
                           children: [
                             CircleAvatar(
                               radius: 100,
                               backgroundImage: NetworkImage(
                                   sitiosTuristicos[index]["foto_monumento"]),
                             ),
                             Text(sitiosTuristicos[index]["descripcion"]),
                             Divider(),
                             Text(sitiosTuristicos[index]["ubicacion"]),
                             Divider(),
                             Text(sitiosTuristicos[index]["fecha_lanzamiento"]),
                           ],
                         ),
                       ),
                     );
                   },
                 );
               },
             );
           },
         ),
       );
     }
   }
   List<Map<String, dynamic>> sitiosTuristicos = [
     {
       'nombre': 'AMAYA MARTINEZ	FABIAN YESID',
       'descripcion':
           'La Gran Muralla China es una antigua fortificación china construida para proteger el imperio chino de las invasiones de los pueblos nómadas del norte.',
       'ubicacion': 'China',
       'fecha_lanzamiento': '573195638261',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.red,
       'foto_monumento':
           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_8xuOAgeDRyKXySIzL6Hi3UCAmz0RM1nFQ&s'
     },
     {
       'nombre': 'BELTRAN BUSTOS	JULIAN DANIEL',
       'descripcion':
           'La Torre Eiffel es una torre de hierro ubicada en el Campo de Marte, en París. Es uno de los símbolos más reconocidos de Francia y del mundo.',
       'ubicacion': 'París, Francia',
       'fecha_lanzamiento': '3226607792',
       'generacion': 'Moderno',
         'color_distintivo': Colors.blue,
         'foto_monumento': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_8xuOAgeDRyKXySIzL6Hi3UCAmz0RM1nFQ&s'
       },
       {
         'nombre': 'BORDA ARDILA	RONNY',
         'descripcion':
             'Machu Picchu es una antigua ciudad inca ubicada en los Andes peruanos. Es uno de los destinos turísticos más populares del mundo debido a su impresionante arquitectura y paisajes.',
         'ubicacion': 'Cuzco, Perú',
         'fecha_lanzamiento': '3219759220',
         'generacion': 'Antiguo',
         'color_distintivo': Colors.green,
         'foto_monumento': 'https://static.vecteezy.com/system/resources/thumbnails/027/128/391/small_2x/baby-cute-cat-png.png'
       },
       {
         'nombre': 'CADENA QUINTERO	ALAN JAIR',
         'descripcion':
             'Las Pirámides de Giza son una de las siete maravillas del mundo antiguo y uno de los sitios turísticos más famosos del planeta. Están ubicadas en las afueras de El Cairo, Egipto.',
         'ubicacion': 'El Cairo, Egipto',
         'fecha_lanzamiento': '5714886956',
         'generacion': 'Antiguo',
         'color_distintivo': Colors.yellow,
         'foto_monumento':
             'https://static.vecteezy.com/system/resources/thumbnails/027/128/391/small_2x/baby-cute-cat-png.png'
       },
       {
         'nombre': 'CAMACHO FERRUCHO	CARLOS EDUARDO',
         'descripcion':
             'El Gran Cañón es un impresionante cañón tallado por el río Colorado en el estado de Arizona. Es uno de los destinos turísticos más visitados de los Estados Unidos.',
         'ubicacion': 'Arizona, Estados Unidos',
         'fecha_lanzamiento': '3143808047',
         'generacion': 'Antiguo',
         'color_distintivo': Colors.orange,
         'foto_monumento': 'https://static.vecteezy.com/system/resources/thumbnails/027/128/391/small_2x/baby-cute-cat-png.png'
       },
       {
         'nombre': 'CASTAÑEDA LEIVA	BRAYAN DAVID',
         'descripcion':
             'La Gran Barrera de Coral es el sistema de arrecifes de coral más grande del mundo. Se encuentra frente a la costa de Queensland, Australia, y es uno de los destinos de buceo más populares del mundo.',
         'ubicacion': 'Queensland, Australia',
         'fecha_lanzamiento': '3013237460',
         'generacion': 'Antiguo',
         'color_distintivo': Colors.cyan,
         'foto_monumento':
             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_8xuOAgeDRyKXySIzL6Hi3UCAmz0RM1nFQ&s'
       },
       {
         'nombre': 'CORDOBA MALDONADO	NICOL DAYANA',
         'descripcion':
             'La Ciudad Prohibida es un complejo de palacios imperiales ubicado en el centro de Pekín. Fue la residencia oficial de los emperadores chinos durante casi 500 años.',
         'ubicacion': 'Pekín, China',
         'fecha_lanzamiento': '573053677841',
         'generacion': 'Antiguo',
         'color_distintivo': Colors.purple,
         'foto_monumento': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXOzAECGO9K_CM3U9wObNY3badC_2QKa74Dg&s'
       },
       {
         'nombre': 'CRUZ FIGUEROA	OSCAR MAURICIO',
         'descripcion':
             'El Parque Nacional Yellowstone es el primer parque nacional del mundo y es famoso por sus geiseres, géiseres de lodo, aguas termales y vida silvestre.',
         'ubicacion': 'Wyoming, Estados Unidos',
         'fecha_lanzamiento': '3227813912',
         'generacion': 'Moderno',
         'color_distintivo': Colors.brown,
         'foto_monumento':
             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXOzAECGO9K_CM3U9wObNY3badC_2QKa74Dg&s'
       },
       {
         'nombre': 'CUIDA ESQUIVEL	SAMUEL',
         'descripcion':
             'La Isla de Pascua es famosa por sus misteriosas estatuas de piedra llamadas moai, que fueron talladas por los antiguos habitantes de la isla. Es un destino turístico único en medio del Pacífico Sur.',
         'ubicacion': 'Chile',
         'fecha_lanzamiento': '3054302025',
         'generacion': 'Antiguo',
         'color_distintivo': Colors.teal,
         'foto_monumento': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_8xuOAgeDRyKXySIzL6Hi3UCAmz0RM1nFQ&s'
       },
       {
         'nombre': 'DAZA CAMACHO	JOSE DAVID',
         'descripcion':
             'El Monte Everest es la montaña más alta del mundo y representa uno de los mayores desafíos para los alpinistas. Es parte de la cordillera del Himalaya, en la frontera entre Nepal y el Tíbet.',
         'ubicacion': 'Himalaya',
         'fecha_lanzamiento': '3143688476',
         'generacion': 'Contemporáneo',
         'color_distintivo': Colors.deepOrange,
         'foto_monumento': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_8xuOAgeDRyKXySIzL6Hi3UCAmz0RM1nFQ&s'
       }
     ];
