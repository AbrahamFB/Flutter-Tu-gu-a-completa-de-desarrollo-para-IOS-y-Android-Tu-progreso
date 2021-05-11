
import 'package:contador/src/paginas/contador_pagina.dart';
import 'package:flutter/material.dart';

//import 'package:contador/src/paginas/home_page.dart';

class MyApp extends StatelessWidget{ //construye el MaterialApp

  @override //sobre escribir el método build

  Widget build( context ){// el context contiene información relevante al árbol de widgets

    return MaterialApp(
      debugShowCheckedModeBanner: false,//eliminar el banner debug
      home: Center(//encargado de ubicar en el centro de la App
        //child: HomePage(),
        child: ContadorPagina(),
      )
      ,
    );
  }

}