import 'package:flutter/material.dart';

import 'package:src/pages/home_page.dart';
import 'package:src/pages/pelicula_detalle.dart';

import 'src/pages/home_page.dart';
import 'C:\Users\afb19\Desktop\peliculas-flutter-master\lib\src\pages\home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: '/',
      routes: {
        '/'       : ( BuildContext context ) => HomePage(),
        'detalle' : ( BuildContext context ) => PeliculaDetalle(),
      },
    );
  }
}