import 'package:flutter/material.dart';
   void main(List<String> args) {
     runApp(const Principal());
   }
   final txtNombre = TextEditingController();
   final txtDescripcion = TextEditingController();
   final txtFechaLanz = TextEditingController();
   final txtUbicacion = TextEditingController();
   final txtFotografia = TextEditingController();
   final txtColor = TextEditingController();
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
           title: Text("Ficha | 2925960"),
           backgroundColor: Colors.green,
           foregroundColor: Colors.white,
         ),
         body: ListView.builder(
           itemCount: sitiosTuristicos.length,
           itemBuilder: (BuildContext context, int index) {
             return ListTile(
               leading: CircleAvatar(
                 backgroundImage:
                     NetworkImage(sitiosTuristicos[index]["foto_monumento"]),
               ),
               title: Text(sitiosTuristicos[index]["nombre"]),
               subtitle: Text(sitiosTuristicos[index]["ubicacion"]),
               trailing: Icon(Icons.arrow_circle_right_sharp),
               onTap: () {
                 showModalBottomSheet(
                   context: context,
                   builder: (context) {
                     return Scaffold(
                       appBar: AppBar(
                         title: Text(sitiosTuristicos[index]["nombre"]),
                       ),
                       body: ListView(
                         children: [
                           CircleAvatar(
                             radius: 100,
                             backgroundImage: NetworkImage(
                                 sitiosTuristicos[index]["foto_monumento"]),
                           ),
                           Text(sitiosTuristicos[index]["descripcion"]),
                         ],
                       ),
                     );
                   },
                 );
               },
             );
           },
         ),
         floatingActionButton: FloatingActionButton(
           foregroundColor: Colors.white,
           backgroundColor: Colors.purple,
           onPressed: () {
             showModalBottomSheet(
               isScrollControlled: true,
               context: context,
               builder: (context) {
                 return Scaffold(
                   appBar: AppBar(
                     foregroundColor: Colors.white,
                     backgroundColor: Colors.purple,
                     title: Text("Nuevo Aprendiz CEET"),
                   ),
                   body: Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Column(
                       children: [
                         TextFormField(
                           controller: txtNombre,
                           decoration: InputDecoration(
                               labelText: "Nombre",
                               hintText: "Nombre del sitio turístico",
                               icon: Icon(Icons.file_copy)),
                         ),
                         TextFormField(
                           controller: txtDescripcion,
                           decoration: InputDecoration(
                               labelText: "Descripción",
                               hintText: "Descripción del sitio turístico",
                               icon: Icon(Icons.file_copy)),
                         ),
                         TextFormField(
                           controller: txtFechaLanz,
                           decoration: InputDecoration(
                               labelText: "Fecha de Nacimiento",
                               hintText:
                                   "Fecha de lanzamiento del sitio turístico",
                               icon: Icon(Icons.file_copy)),
                         ),
                         TextFormField(
                           controller: txtFotografia,
                           decoration: InputDecoration(
                               labelText: "Direccion",
                               hintText: "Ubicación del sitio turístico",
                               icon: Icon(Icons.file_copy)),
                         ),
                         TextFormField(
                           controller: txtColor,
                           decoration: InputDecoration(
                               labelText: "Fotografía",
                               hintText: "Fotografía del sitio turístico",
                               icon: Icon(Icons.file_copy)),
                         ),
                         TextFormField(
                           decoration: InputDecoration(
                               labelText: "Colorn Favorito",
                               hintText: "Color que identifica el sitio turístico",
                               icon: Icon(Icons.file_copy)),
                         ),
                       ],
                     ),
                   ),
                   floatingActionButton: FloatingActionButton(
                     foregroundColor: Colors.white,
                     backgroundColor: Colors.green,
                     onPressed: () {
                       if (txtNombre.text == "") {
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                             backgroundColor: Colors.red,
                             content: Text(
                                 "ERROR! El nombre del sitio turístico está vacío")));
                       } else {
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                             backgroundColor: Colors.green,
                             content: Text(
                                 "Se ha guardado satisfactoriamente el sitio turístico: ${txtNombre.text}")));
                       }
                     },
                     child: Icon(Icons.save),
                   ),
                 );
               },
             );
           },
           child: Icon(Icons.account_circle),
         ),
       );
     }
   }
   List<Map<String, dynamic>> sitiosTuristicos = [
     {
       'nombre': 'AMAYA MARTINEZ	FABIAN YESID',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: ozkaritogioserver@gmail.com',
       'ubicacion': '573195638261',
       'fecha_lanzamiento': 'Siglo VII a.C.',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.red,
       'foto_monumento':
           'https://media.istockphoto.com/id/814423752/es/foto/ojo-modelo-con-un-maquillaje-colorido-arte-primer-plano.jpg?s=612x612&w=0&k=20&c=lr7yWmFVkmY0pCkTjHbxJN6OZNOy1ZZczmVS7hkN4lg='
     },
     {
       'nombre': 'BELTRAN BUSTOS	JULIAN DANIEL	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: julianbeltran081@gmail.com',
       'ubicacion': '3226607792',
       'fecha_lanzamiento': '31 de marzo de 1889',
       'generacion': 'Moderno',
       'color_distintivo': Colors.blue,
       'foto_monumento': 'https://i0.wp.com/www.silocreativo.com/wp-content/uploads/2015/04/5-bancos-imagenes-gratuitas.png?fit=666%2C370&quality=100&strip=all&ssl=1'
     },
     {
       'nombre': 'BORDA ARDILA	RONNY	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: ronnyardila2810@gmail.com',
       'ubicacion': '3219759220',
       'fecha_lanzamiento': 'Siglo XV',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.green,
       'foto_monumento': 'https://www.shutterstock.com/image-photo/hand-holding-human-brain-futuristic-600nw-2481678871.jpg'
     },
     {
       'nombre': 'CADENA QUINTERO	ALAN JAIR	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: blonabek@gmail.com',
       'ubicacion': '5714886956',
       'fecha_lanzamiento': 'Siglo XXVI a.C.',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.yellow,
       'foto_monumento':
           'https://i0.wp.com/www.silocreativo.com/wp-content/uploads/2015/04/5-bancos-imagenes-gratuitas.png?fit=666%2C370&quality=100&strip=all&ssl=1'
     },
     {
       'nombre': 'CAMACHO FERRUCHO	CARLOS EDUARDO	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: carloseduardocf65@gmail.com',
       'ubicacion': '3143808047',
       'fecha_lanzamiento': 'Siglo XVIII',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.orange,
       'foto_monumento': 'https://static.vecteezy.com/system/resources/thumbnails/045/132/933/small/a-beautiful-picture-of-the-eiffel-tower-in-paris-the-capital-of-france-with-a-wonderful-background-in-wonderful-natural-colors-photo.jpg'
     },
     {
       'nombre': 'CASTAÑEDA LEIVA	BRAYAN DAVID	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: bradacale@gmail.com',
       'ubicacion': '3013237460',
       'fecha_lanzamiento': 'Siglo XVII',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.cyan,
       'foto_monumento':
           'https://static.vecteezy.com/system/resources/thumbnails/045/132/933/small/a-beautiful-picture-of-the-eiffel-tower-in-paris-the-capital-of-france-with-a-wonderful-background-in-wonderful-natural-colors-photo.jpg'
     },
     {
       'nombre': 'CORDOBA MALDONADO	NICOL DAYANA	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: nicolcordobam@gmail.com',
       'ubicacion': '573053677841',
       'fecha_lanzamiento': '1406',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.purple,
       'foto_monumento': 'https://i0.wp.com/www.silocreativo.com/wp-content/uploads/2015/04/5-bancos-imagenes-gratuitas.png?fit=666%2C370&quality=100&strip=all&ssl=1'
     },
     {
       'nombre': 'CRUZ FIGUEROA	OSCAR MAURICIO	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: oscarcruzsena2006@gmail.com',
       'ubicacion': '3227813912',
       'fecha_lanzamiento': '1 de marzo de 1872',
       'generacion': 'Moderno',
       'color_distintivo': Colors.brown,
       'foto_monumento':
           'https://www.shutterstock.com/image-photo/hand-holding-human-brain-futuristic-600nw-2481678871.jpg'
     },
     {
       'nombre': 'CUIDA ESQUIVEL	SAMUEL	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: samuelcuidaesquivel@gmail.com',
       'ubicacion': '3054302025',
       'fecha_lanzamiento': 'Siglo XIII',
       'generacion': 'Antiguo',
       'color_distintivo': Colors.teal,
       'foto_monumento': 'https://i0.wp.com/www.silocreativo.com/wp-content/uploads/2015/04/5-bancos-imagenes-gratuitas.png?fit=666%2C370&quality=100&strip=all&ssl=1'
     },
     {
       'nombre': 'DAZA CAMACHO	JOSE DAVID	',
       'descripcion':
           'Apendiz del CEET de la ficha 2925960. Correo: josecrack13113@gmail.com',
       'ubicacion': '3143688476',
       'fecha_lanzamiento': '29 de mayo de 1953',
       'generacion': 'Contemporáneo',
       'color_distintivo': Colors.deepOrange,
       'foto_monumento': 'https://media.istockphoto.com/id/814423752/es/foto/ojo-modelo-con-un-maquillaje-colorido-arte-primer-plano.jpg?s=612x612&w=0&k=20&c=lr7yWmFVkmY0pCkTjHbxJN6OZNOy1ZZczmVS7hkN4lg='
     }
   ];
