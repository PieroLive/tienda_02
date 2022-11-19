import 'dart:convert';

class Clientes {
  Clientes({
    required this.id,
    required this.clientesId,
    required this.nombre,
    required this.dni,
    required this.fecha,
    required this.imagen,
    required this.tipo,
    required this.estado,
  });

  String id;
  int clientesId;
  String nombre;
  String dni;
  String fecha;
  String imagen;
  String tipo;
  String estado;

  factory Clientes.fromJson(String str) => Clientes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Clientes.fromMap(Map<String, dynamic> json) => Clientes(
        id: json["_id"],
        clientesId: json["clientesId"],
        nombre: json["nombre"],
        dni: json["dni"],
        fecha: json["fecha"],
        imagen: json["imagen"],
        tipo: json["tipo"],
        estado: json["estado"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "clientesId": clientesId,
        "nombre": nombre,
        "dni": dni,
        "fecha": fecha,
        "imagen": imagen,
        "tipo": tipo,
        "estado": estado,
      };
}
