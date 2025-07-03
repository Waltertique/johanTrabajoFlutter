import 'dart:js_util';
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
            home: Scaffold(
                appBar: AppBar(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue[900],
                    title: Text("Información Personal"),
                ),
                body: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                    children: [
                      Image(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBgprRjQ5rngQOKvWxiu3nNlxjXy8sWzc0fA&s")
                      ),
                      ListTile(
                        title: Text("Johan Sneider"),
                        subtitle: Text("Nombres"),
                        leading: Icon(Icons.accessibility_sharp),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("Madrigal Tique"),
                        subtitle: Text("Apellidos"),
                        leading: Icon(Icons.accessible_forward_sharp),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("232323232323"),
                        subtitle: Text("Celular"),
                        leading: Icon(Icons.one_x_mobiledata),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("Medellin"),
                        subtitle: Text("Regional"),
                        leading: Icon(Icons.ac_unit_rounded),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("CEET"),
                        subtitle: Text("Centro de Formación"),
                        leading: Icon(Icons.zoom_out_map_sharp),
                      ),
                      Divider(),
                    ],
                    ),
                ),
            ),
        );
    }
}
