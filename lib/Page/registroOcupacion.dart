import 'package:flutter/material.dart';
import 'package:flutter_ocupacion/Page/listaOcupacion.dart';

class RegistroOcupacion extends StatelessWidget {
  const RegistroOcupacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registro Guardar'),
        ),
        body: Column(
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
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            heroTag: 'bt1',
            onPressed: () {},
            child: const Icon(Icons.save),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: 'bt2',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListaOcupacion()),
              );
            },
            child: const Icon(Icons.list),
          ),
        ]));
  }
}
/*
//funciaona
floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListaOcupacion()),
            );
          },
          child: const Icon(Icons.list)
        ),




floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.save),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListaOcupacion()),
            );
          },
          child: const Icon(Icons.list),
        )
        
        */