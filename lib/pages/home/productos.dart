import 'dart:convert';
import 'package:fashionline/models/dataproducto.dart';
import 'package:flutter/material.dart';
import 'package:fashionline/env_url.dart';
import 'package:http/http.dart' as http;

var textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black54);
class Productos extends StatefulWidget {
  @override
  ProductosState createState() => ProductosState();
}

class ProductosState extends State<Productos> {
  late Future<List<Producto>> productos;
  final SliderListKey = GlobalKey<ProductosState>();

  @override
  void initState() {
    super.initState();
    productos = getProdList();
  }

  Future<List<Producto>> getProdList() async {
    final response = await http.get("${Env.URL_PREFIX}/api/productos");

    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Producto> prod = items.map<Producto>((json) {
      return Producto.fromJson(json);
    }).toList();

    return prod;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: SliderListKey,
        appBar: AppBar(
          title: Text('Lista de Productos'),
        ),
        body: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            FutureBuilder<List<Producto>>(
              future: productos,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                // By default, show a loading spinner.
                if (!snapshot.hasData) return CircularProgressIndicator();
                // slider commonswiper
                return ListView.builder(
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                      var data = snapshot.data[index];
                      return Row(
                        children: [
                          Image.asset(
                            'static/fashionline.png',
                            height: 150,
                            width: 120,
                            alignment: Alignment.centerLeft,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10,top:5,right: 20,bottom: 5)),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data.nombre??'none',
                                  style:
                                  TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),
                                ),
                                Text(
                                    data.precio??'none',
                                    style:textStyle),

                              ],
                            ),
                          ),
                        ],
                      );


                  },
                );
              },
            ),
          ]
        ),
    );
  }
}