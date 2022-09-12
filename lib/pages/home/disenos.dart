import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fashionline/env_url.dart';
import 'package:http/http.dart' as http;
import '../../models/datadiseno.dart';
import '../../models/iddiseno.dart';
import '../../models/imagen.dart';

var textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black54);

class Disenos extends StatefulWidget {
  @override
  DisenosState createState() => DisenosState();
}

class DisenosState extends State<Disenos> {
  late Future<List<Iddiseno>> disenos;
  final DisenosListKey = GlobalKey<DisenosState>();

  @override
  void initState() {
    super.initState();
    disenos = getProdList();
  }

  Future<List<Iddiseno>> getProdList() async {
    final response = await http.get("${Env.URL_PREFIX}/api/disign");

    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Iddiseno> prod = items.map<Iddiseno>((json) {
      return Iddiseno.fromJson(json);
    }).toList();
    return prod;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: DisenosListKey,
      appBar: AppBar(
        title: Text('Lista de diseños'),
      ),
      body: ListView(
          shrinkWrap: true,
          children: [
            FutureBuilder<List<Iddiseno>>(
              future: disenos,
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
                                  data.precio??'none',semanticsLabel: ' €',
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