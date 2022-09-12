import 'package:fashionline/pages/chat/chat.dart';
import 'package:fashionline/pages/profile/profile.dart';
import 'package:fashionline/pages/search/search.dart';
import 'package:flutter/material.dart';
import 'package:fashionline/pages/home/home.dart';


// tab内容区
List<Widget> tabViewList = [
  Home(),
  IndexSearch(),
  Chat(),
  Profile(),
];

// bottomNavigatorItem

List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.add_call)),
  BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
