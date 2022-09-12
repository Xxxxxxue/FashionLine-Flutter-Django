import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fashionline/env_url.dart';
import 'package:http/http.dart' as http;
import 'package:fashionline/models/imagen.dart';
import 'package:fashionline/wedgets/common_swiper.dart';
import 'package:fashionline/pages/home/home_navigator.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  late Future<List<Imagen>> imagenes;
  final SliderListKey = GlobalKey<HomeState>();

  @override
  void initState() {
    super.initState();
    imagenes = getImgList();
  }

  Future<List<Imagen>> getImgList() async {
    final response = await http.get("${Env.URL_PREFIX}/api/home");

    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Imagen> slider = items.map<Imagen>((json) {
      return Imagen.fromJson(json);
    }).toList();

    return slider;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: SliderListKey,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: [
          FutureBuilder<List<Imagen>>(
            future: imagenes,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              // By default, show a loading spinner.
              if (!snapshot.hasData) return CircularProgressIndicator();
              // slider commonswiper
              return CommonSwiper(images: snapshot.data);
            },
          ),
          HomeNavigator()
         
        ],
      )

    );
  }
}
