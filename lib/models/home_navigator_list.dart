import 'package:flutter/material.dart';


class IndexNavigatorItem {
  final String title;
  final String imageUri;
  final Function(BuildContext contenxt)? onTap;
  IndexNavigatorItem(this.title, this.imageUri, this.onTap);
}

List<IndexNavigatorItem> indexNavigatorItemList = [
  IndexNavigatorItem('Compra tus Productos', 'static/home_producto.jpg',
          (BuildContext context) {
        Navigator.of(context).pushNamed('productos');
      }),
  IndexNavigatorItem('Encuentra tus Diseños', 'static/home_diseno.jpg',
          (BuildContext context) {
        Navigator.of(context).pushNamed('disenos');
      }),
  IndexNavigatorItem('Agenda de Contacto', 'static/home_agenda.jpg',
          (BuildContext context) {
        Navigator.of(context).pushNamed('agendas');
      }),

];
