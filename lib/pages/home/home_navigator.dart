import 'package:flutter/material.dart';
import 'package:fashionline/models/home_navigator_list.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(top: 6.0, bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: indexNavigatorItemList
            .map((item) => InkWell(
          onTap: () {
            item.onTap!(context);
          },
          child: Column(
            children: [
              Image.asset(
                item.imageUri,
              ),
              Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ))
            .toList(),
      ),
    );
  }
}
