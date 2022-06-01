import 'package:flutter/material.dart';

class ListaOcupacion extends StatelessWidget {
  // const ListaOcupacion({super.key})

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Ocupacion'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('hola ya si'),
        ),
      ),
    );
  }
}
