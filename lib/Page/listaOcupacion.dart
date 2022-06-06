import 'package:flutter_ocupacion/Page/RowOcupacion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ocupacion/Page/registroOcupacion.dart';

class ListaOcupacion extends StatelessWidget {
  const ListaOcupacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Ocupacion'),
      ),
      body: RowOcupacion(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegistroOcupacion()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
