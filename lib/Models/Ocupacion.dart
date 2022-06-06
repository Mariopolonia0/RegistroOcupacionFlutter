// ignore_for_file: file_names

class Ocupacion {
  int? idOcupacion;
  String descripcion;
  double salario;
  String fechaRegistro;

  Ocupacion(
      {this.idOcupacion = null,
      this.descripcion = "",
      this.salario = 0.0,
      this.fechaRegistro = ""});

  Map<String, dynamic> toMap() {
    return {
      'idOcupacion': idOcupacion,
      'descripcion': descripcion,
      'salario': salario,
      'fechaRegistro': fechaRegistro,
    };
  }
}
