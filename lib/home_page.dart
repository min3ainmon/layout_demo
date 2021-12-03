import 'package:flutter/material.dart';
import 'category_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> children = [
    Category(colour: Colors.white),
    // Profile(Colors.white),
    // Profile(Colors.white70),
    // Profile(Colors.white70),
    // Profile(Colors.white70),
  ];
  void onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: children[_selectedIndex],
    );
  }
}


