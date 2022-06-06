import 'package:flutter/material.dart';
import 'package:flutter_ocupacion/DataBase/OcupacionDB.dart';
import 'package:flutter_ocupacion/Models/Ocupacion.dart';
import 'package:intl/intl.dart';

class RegistroOcupacion extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final descripcionController = TextEditingController();
  final salarioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro Guardar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            TextFormField(
              controller: descripcionController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'campo descripción esta vacío';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Descripcion",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: salarioController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'campo salario esta vacío';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Salario",
                border: OutlineInputBorder(),
              ),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            var fecha = DateFormat.yMMMEd().format(DateTime.now());

            OcupacionDb.insert(Ocupacion(
                descripcion: descripcionController.text,
                salario: double.parse(salarioController.text),
                fechaRegistro: fecha));
          }
        },
        child: const Icon(Icons.save_as_outlined),
      ),
    );
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

 Column(
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