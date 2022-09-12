import 'package:fashionline/env_url.dart';

class Agenda {
  final int? id;
  final String? nombre;
  final String? apellidos;
  final String? email;
  final String? telefono;
  final String? empresa;
  final String? cif;
  final String? cuenta;
  final String? descripcion;
  final String? icon;
  final int? idusuario;

  Agenda({this.id,this.nombre, this.apellidos,this.email,this.telefono,this.empresa,
          this.cif,this.cuenta,this.descripcion,this.icon,this.idusuario});

  factory Agenda.fromJson(Map<String, dynamic> json) {
    return Agenda(
      id: json['id'],
      nombre: json['nombre'],
      apellidos: json['apellidos'],
      email: json['email'],
      telefono: json['telefono'],
      empresa: json['emoresa'],
      cif: json['cif'],
      cuenta: json['cuenta'],
      descripcion: json['descripcion'],
      icon: json['icon'],
      idusuario: json['idusuario']

    );
  }
  Map<String?, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'apellidos': apellidos,
    'email':email,
    'telefono': telefono,
    'empresa': empresa,
    'cif': cif,
    'cuenta': cuenta,
    'descripcion': descripcion,
    'icon': icon,
    'idusuario': idusuario,

  };
}