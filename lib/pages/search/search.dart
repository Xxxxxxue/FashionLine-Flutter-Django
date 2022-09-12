import 'dart:convert';
import 'package:fashionline/pages/search/search_bar/index.dart';
import 'package:flutter/material.dart';
import 'package:fashionline/env_url.dart';
import 'package:http/http.dart' as http;
import 'package:fashionline/models/imagen.dart';
import 'package:fashionline/wedgets/common_swiper.dart';
import 'package:fashionline/pages/home/home_navigator.dart';

class IndexSearch extends StatefulWidget {
  const IndexSearch({Key? key}) : super(key: key);

  @override
  _IndexSearchState createState() => _IndexSearchState();
}

class _IndexSearchState extends State<IndexSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SearchBar(
            shwoLocation: true,
            onSearch: () {
              Navigator.of(context).pushNamed('search');
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '',
              style:
              TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),
            )
          ],
        )
    );
  }
}