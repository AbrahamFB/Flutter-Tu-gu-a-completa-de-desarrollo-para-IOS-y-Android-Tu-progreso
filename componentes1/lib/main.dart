import 'package:componentes/src/paginas/home_pagina.dart';
//import 'package:componentes/src/paginas/home_temp.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Componentes App',
          debugShowCheckedModeBanner: false,
          home: HomePagina()
    );
  }
}