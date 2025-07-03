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
            home: HomePrinicipal(),
        );
    }
}
class HomePrinicipal extends StatefulWidget {
    const HomePrinicipal({super.key});
    @override
    State<HomePrinicipal> createState() => _HomePrinicipalState();
}
class _HomePrinicipalState extends State<HomePrinicipal> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                title: Text("Ficha | 2925960"),
            ),
            body: ListView.builder(
                itemCount: sitiosTuristicos.length,
                itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                    leading: Icon(Icons.usb_off_rounded),
                    title: Text(sitiosTuristicos[index]['nombre']),
                    subtitle: Text(sitiosTuristicos[index]['ubicacion']),
                    );
                },
            ),
        );
    }
}
List<Map<String, dynamic>> sitiosTuristicos = [
    {
        'nombre': 'AMAYA MARTINEZ	FABIAN YESID',
        'ubicacion': '573195638261',
    },
    {
        'nombre': 'BELTRAN BUSTOS	JULIAN DANIEL',
        'ubicacion': '3226607792',
    },
    {
        'nombre': 'BORDA ARDILA	RONNY',
        'ubicacion': '3219759220',
    },
    {
        'nombre': 'CADENA QUINTERO	ALAN JAIR',
        'ubicacion': '5714886956',
    },
    {
        'nombre': 'CAMACHO FERRUCHO	CARLOS EDUARDO',
        'ubicacion': '3143808047',
    },
    {
        'nombre': 'CASTAÑEDA LEIVA	BRAYAN DAVID',
        'ubicacion': '3013237460',
    },
    {
        'nombre': 'CORDOBA MALDONADO	NICOL DAYANA',
        'ubicacion': '573053677841',
      },
      {
        'nombre': 'CRUZ FIGUEROA	OSCAR MAURICIO',
        'ubicacion': '3227813912',
      },
      {
        'nombre': 'CUIDA ESQUIVEL	SAMUEL',
        'ubicacion': '3054302025',
      },
      {
        'nombre': 'DAZA CAMACHO	JOSE DAVID',
        'ubicacion': '3143688476',
      },
      {
        'nombre': 'ESPITIA ARENAS	MAICOL STIVEN',
        'ubicacion': '3123767034',
      },
      {
        'nombre': 'FERNANDEZ VALLEJO	SHARON TATIANA',
        'ubicacion': '3227658431',
      },
      {
        'nombre': 'HERRERA MATEUS	BRAYAN STIVEN',
        'ubicacion': '3132860500',
      }
];
