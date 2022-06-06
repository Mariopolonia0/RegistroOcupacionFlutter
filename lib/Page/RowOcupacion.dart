import 'package:flutter/material.dart';
import 'package:flutter_ocupacion/DataBase/OcupacionDB.dart';
import 'package:path/path.dart';

import '../Models/Ocupacion.dart';

class RowOcupacion extends StatefulWidget {
  @override
  State<RowOcupacion> createState() => _RowOcupacionState();
}

class _RowOcupacionState extends State<RowOcupacion> {
  //const RowOcupacion({super.key});
  List<Ocupacion> ocupaciones = [];

  @override
  void initState() {
    cargarOcupacion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ocupaciones.length,
      itemBuilder: (context, items) => _createItem(items),
    );
  }

  _createItem(int items) {
    return Dismissible(
        key: Key(items.toString()),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          OcupacionDb.delete(ocupaciones[items]);
        },
        child: llenarItems(items));
  }

  Padding llenarItems(int items) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 187, 187, 187)),
        child: ListTile(
            title: Text(
              ocupaciones[items].descripcion,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  ocupaciones[items].salario.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  ocupaciones[items].fechaRegistro.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            )),
      ),
    );
  }

  cargarOcupacion() async {
    List<Ocupacion> auxOcupaciones = await OcupacionDb.ListaOcupacion();

    setState(() {
      ocupaciones = auxOcupaciones;
    });
  }
}
