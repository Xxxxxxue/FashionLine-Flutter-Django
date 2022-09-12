import 'package:fashionline/pages/home/agendas.dart';
import 'package:fashionline/pages/home/disenos.dart';
import 'package:fashionline/pages/home/productos.dart';
import 'package:fashionline/pages/index.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fashionline/pages/profile/login.dart';
import 'package:fashionline/pages/profile/register.dart';
import 'package:fashionline/pages/home/home.dart';
import 'pages/NotFond.dart';

class Routes {
  // 定义路由名称
  static String home = '/';
  static String login = 'login';
  static String register = '/register';
  static String productos = '/productos';
  static String disenos = '/disenos';
  static String agendas = '/agendas';
  static String roomDetail = '/roomDetail/:roomId';


  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return HomePage();
  });

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return LoginPage();
  });

  static Handler _registerHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RegisterPage();
  });

  static Handler _productosHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return Productos();
  });

  static Handler _disenosHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return Disenos();
  });

  static Handler _agendasHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return Agendas();
  });

  static Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return NotFoundPage();
  });

  // static Handler _roomDetailHandler = Handler(
  //     handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  //   return RoomDetailPage(
  //     roomId: params['roomId']![0],
  //   );
  // });


  static void configureRoutes(FluroRouter router) {

    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHanlder);
    router.define(productos, handler: _productosHanlder);
    router.define(disenos, handler: _disenosHanlder);
    router.define(agendas, handler: _agendasHanlder);
    // router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;


  }
}
