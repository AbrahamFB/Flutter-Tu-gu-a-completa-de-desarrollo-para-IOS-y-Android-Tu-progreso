import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle( fontSize: 30 );
  final conteo = 10;

  @override
  Widget build(BuildContext context) {// el método build es utilizado cuando necesitamos redibujar el widget o dibujar el widget
    return Scaffold(//es usado para ocupar toda la pantalla
      appBar: AppBar(
        centerTitle: true,
        title: Text('Título'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de Clicks",style: estiloTexto),
            Text( "$conteo", style: estiloTexto),
          ],
        )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add),
          onPressed: () {
            print("Hola Mundo");
          },
        ),
       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// cambiar la ubicación del botón
    );
  }
}