import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fashionline/env_url.dart';
import 'package:http/http.dart' as http;
import 'package:fashionline/models/imagen.dart';
import 'package:fashionline/wedgets/common_swiper.dart';
import 'package:fashionline/pages/home/home_navigator.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'First, you need login to APP.',
              style:
              TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),
            )
          ],
        )
    );
  }
}