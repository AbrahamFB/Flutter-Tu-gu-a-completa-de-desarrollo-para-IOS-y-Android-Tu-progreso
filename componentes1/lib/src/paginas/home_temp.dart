import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorto()

      ),
    );
  }

  /*List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    for( String opt in opciones  ){

      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add( tempWidget )  // .. referenciar a lista y vuelve a llamar el método add
           ..add( Divider()); //que regrese al operador original

    }

    return lista;
  }*/

  List<Widget> _crearItemsCorto(){
    //var widgets = opciones.map( (item){ version larga
    return opciones.map( (item){   //versión corta
      
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!' ),
            subtitle: Text("Hola"),
            leading: Icon( Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
    //return widgets; versión larga
  }

}