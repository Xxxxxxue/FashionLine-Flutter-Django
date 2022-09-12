// import 'package:fashionline/models/dataproducto.dart';
// import 'package:flutter/material.dart';
// import 'package:fashionline/models/dataagenda.dart';
//
// var textStyle = TextStyle(fontSize: 14, color: Colors.black54);
//
// class ItemWidget extends StatelessWidget {
//   //data puede ser productos, disenos, agendas
//   final List<Agenda>? data;
//
//   const ItemWidget({Key? key, this.data}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       padding: EdgeInsets.all(8),
//       child: Row(
//         children: [
//           Image.network(
//             data!.icon,
//             height: 150,
//             width: 120,
//           ),
//           Padding(padding: EdgeInsets.only(left: 10)),
//           Expanded(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 data!.nombre,
//                 style:
//                     TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
//              ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(data!.descripcion, style: textStyle),
//                 ],
//               )
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }
