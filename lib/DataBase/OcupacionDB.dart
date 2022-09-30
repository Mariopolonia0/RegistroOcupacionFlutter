import 'dart:async';
import 'package:path/path.dart';
import 'package:flutter_ocupacion/Models/Ocupacion.dart';
import 'package:sqflite/sqflite.dart';

class OcupacionDb {
  //abrir y crear la base de dato
  static Future openDB() async {
    return openDatabase(
        //el getdatabase devuelve las rutas de las database
        join(await getDatabasesPath(), 'ocupacion.db'),
        onCreate: (db, version) {
      return db.execute("""
                  CREATE TABLE Ocupaciones(
                    idOcupacion INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                    descripcion TEXT,
                    salario DOUBLE,
                    fechaRegistro TEXT)
                """);
    }, //onCreate
        version: 1);
  }

  //insetar en la base de dato
  static Future<int> insert(Ocupacion ocupacion) async {
    Database database = await openDB();

    return database.insert("Ocupaciones", ocupacion.toMap());
  }

  static Future<int> delete(Ocupacion ocupacion) async {
    Database database = await openDB();

    return database.delete("Ocupaciones",
        where: "idOcupacion = ?", whereArgs: [ocupacion.idOcupacion]);
  }

  static Future<int> update(Ocupacion ocupacion) async {
    Database database = await openDB();

    return database.update("Ocupaciones", ocupacion.toMap(),
        where: "id = ?", whereArgs: [ocupacion.idOcupacion]);
  }

  static Future<List<Ocupacion>> ListaOcupacion() async {
    Database database = await openDB();

    final List<Map<String, dynamic>> listOcupacion =
        await database.query("Ocupaciones");

    return List.generate(
      listOcupacion.length,
      (i) => Ocupacion(
        idOcupacion: listOcupacion[i]['idOcupacion'],
        descripcion: listOcupacion[i]['descripcion'],
        salario: listOcupacion[i]['salario'],
        fechaRegistro: listOcupacion[i]['fechaRegistro'],
      ),
    );
  }
}
