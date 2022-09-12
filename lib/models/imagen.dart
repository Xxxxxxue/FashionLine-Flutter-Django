import 'package:fashionline/env_url.dart';

class Imagen {
  final String? nombre;
  final String? imagen;

  Imagen({this.nombre, this.imagen});

  factory Imagen.fromJson(Map<String, dynamic> json) {
    return Imagen(
        nombre: json['nombre'],
        imagen: '${Env.URL_PREFIX}' + json['imagen'] as String,
    );
  }
  Map<String?, dynamic> toJson() => {
    'nombre': nombre,
    'imagen': imagen
  };
}