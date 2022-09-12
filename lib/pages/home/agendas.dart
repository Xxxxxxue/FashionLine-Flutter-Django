import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fashionline/env_url.dart';
import 'package:http/http.dart' as http;
import '../../models/dataagenda.dart';

var textStyle = TextStyle(fontSize: 14, color: Colors.black54);

class Agendas extends StatefulWidget {
  @override
  AgendasState createState() => AgendasState();
}

class AgendasState extends State<Agendas> {
  late Future<List<Agenda>> agendas;
  final AgendasListKey = GlobalKey<AgendasState>();

  @override
  void initState() {
    super.initState();
    agendas = getProdList();
  }

  Future<List<Agenda>> getProdList() async {
    final response = await http.get("${Env.URL_PREFIX}/api/agendas");

    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Agenda> prod = items.map<Agenda>((json) {
      return Agenda.fromJson(json);
    }).toList();

    return prod;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: AgendasListKey,
      appBar: AppBar(
        title: Text('Agenda de contacto'),
      ),
      body: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            FutureBuilder<List<Agenda>>(
              future: agendas,
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
                        Image.network(
                          data.icon,
                          height: 150,
                          width: 120,
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
                                data.telefono??'none',
                                style:textStyle),
                              Text(
                                  data.email??'none',
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
