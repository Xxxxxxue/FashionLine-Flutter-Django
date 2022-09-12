import 'package:fashionline/pages/home/home.dart';
import 'package:fashionline/pages/index.dart';
import 'package:fashionline/pages/profile/login.dart';
import 'package:fashionline/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/api.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return  MaterialApp(
        title: 'FashionLine',
        theme: ThemeData(
            primarySwatch: Colors.green,
           visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: router.generator,
        debugShowCheckedModeBanner: false,
        //home: LoginPage(),
      );
  }
}
