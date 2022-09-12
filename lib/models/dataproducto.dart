import 'package:fashionline/env_url.dart';

import 'imagen.dart';

class Producto {
  final int? id;
  final String? nombre;
  final String? precio;
  //final Imagen? idimagen;

  Producto({ this.id,this.nombre,this.precio});

  factory Producto.fromJson(Map<String, dynamic> json) {
    return Producto(
        id: json['id'],
        nombre: json['nombre'],
        precio: json['precio'],
       // idimagen: json['idimagen'],

    );
  }
  Map<String?, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'precio': precio,
   // 'idimagen': idimagen,

  };
}