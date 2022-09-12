import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fashionline/env_url.dart';
import 'package:http/http.dart' as http;
import 'package:fashionline/models/imagen.dart';
import 'package:fashionline/wedgets/common_swiper.dart';
import 'package:fashionline/pages/home/home_navigator.dart';
import 'package:fashionline/pages/profile/login.dart';

var textStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);


class Profile extends StatelessWidget {

  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Profile'),
    ),
    body: Container(
      color: Colors.teal,
      padding: EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://tva1.sinaimg.cn/large/008i3skNgy1gsuh24kjbnj30do0duaad.jpg'),
            ),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text('Login', style: textStyle),
                  ),
                  Text('  /  ', style: textStyle),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text('Register', style: textStyle),
                  ),
                ],
              ),
              Text(
                'Participa con nosotros',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
     ),
    );
  }
}
