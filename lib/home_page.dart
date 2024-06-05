import 'package:exam_flutter_sem4_homepage/search_page.dart';
import 'package:exam_flutter_sem4_homepage/work.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'my_homepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {

  final List<Widget> _screens = [
    const HomePage(),
    const Search(),
    const WorkScreen(),
    const About(),

  ];
  int _selectedIndex = 0;

  _changeTab(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.cyanAccent,
        onTap: (index) => _changeTab(index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_travel),label: "Work"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "About"),
        ],
      ),
    );
  }
}
