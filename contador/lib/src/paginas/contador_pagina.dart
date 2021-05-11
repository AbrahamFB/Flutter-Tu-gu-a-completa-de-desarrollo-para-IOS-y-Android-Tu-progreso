import 'package:flutter/material.dart';

class ContadorPagina extends StatefulWidget {
  
  @override
  createState() => _ContadorPaginaState();

}

class _ContadorPaginaState extends State<ContadorPagina> {//clase privada

  final _estiloTexto = new TextStyle( fontSize: 30 );
  int _conteo = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de Clicks",style: _estiloTexto),
            Text( "$_conteo", style: _estiloTexto),
          ],
        )
        ),
        floatingActionButton: _crearBotones()
       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// cambiar la ubicación del botón
    );
  }

  Widget _crearBotones() {
    return Row(
       mainAxisAlignment: MainAxisAlignment.end,  //Nos permite alinear o ordenar internamente
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset), //no se puso con () para que no se ejecute al instante si no hasta que se precione
        Expanded(child: SizedBox( ),),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _sustraer), //paso por referencia
        SizedBox( width: 10.0, ),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar), // lo mismo
      ],
    );
    
  }

  void _agregar(){
    setState(() => _conteo++);  //Estamos pidiendo que se redibuje nuevamente, eso quiere decir que hubo cambios
  }

  void _sustraer(){
    setState(() => _conteo--);
  }

  void _reset(){
     setState(() => _conteo = 0);
  }
}