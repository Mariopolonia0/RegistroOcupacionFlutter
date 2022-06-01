import 'package:flutter/material.dart';
import 'package:flutter_ocupacion/Page/registroOcupacion.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Ocupacion',
    home: RegistroOcupacion(),
  ));
}

/*

class ListaScaffold extends StatelessWidget {
  const ListaScaffold({super.key});

  void push() {
    Navigator.push(super.createElement(),Lista())
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ocupacion'),
        actions: <Widget>[
          new IconButton(onPressed: push, icon: const Icon(Icons.list))
        ],
      ),
      body: ListaOcupacion(),
    );
  }
}

class ListaOcupacion extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Text('hola vida')),
        ]);
  }
}*/
/*

@override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Descripcion'),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Salario'),
          ),
        ),
        
      ],
    );
  }


 */



