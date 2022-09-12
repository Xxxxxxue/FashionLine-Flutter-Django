class Iddiseno {
  final String? nombre;
  final String? precio;

  Iddiseno({this.nombre,this.precio});

  factory Iddiseno.fromJson(Map<String, dynamic> json) {
    return Iddiseno(
      nombre: json['nombre'],
      precio: json['precio'],
    );
  }
  Map<String?, dynamic> toJson() => {
    'nombre': nombre,
    'precio': precio,
  };
}