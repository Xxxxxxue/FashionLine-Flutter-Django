import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/imagen.dart';
import 'package:http/http.dart' as http;

class TodoProvider with ChangeNotifier {
  TodoProvider() {
    this.fetchTasks();
  }

  List<Imagen> _todos = [];

  List<Imagen> get todos {
    //使用get作為字首，運行屬性訪問器函式 getter
    // 向外暴露類中某個狀態適合使用setter,getter函式
    // 如果是觸發類中的某個行為操作普通函式較適合。
    return [..._todos]; //展開運算子 (Spread Operator)，將兩個 List 結合在一起: [...list]
  } // main.dart 訪問並回傳資料


  fetchTasks() async {
    final url = 'http://10.0.2.2:8000/api/home/?format=json';
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body) as List;
      print('data::$data');
      // data 輸出為 [json, json, json...]
      _todos = data.map<Imagen>((json) => Imagen.fromJson(json)).toList();
      //print('_todos::$_todos');
      // _todos 輸出為 [Instance, Instance, Instance...]
    }
  }
}