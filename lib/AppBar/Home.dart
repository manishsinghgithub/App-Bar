import 'package:app_bar/AppBar/backround.dart';
import 'package:app_bar/AppBar/trans.dart';
import 'package:app_bar/AppBar/transparent.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _currentIndex = 0;
  final screens = [BackAppbar(), Colored(), TransAppbar()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        elevation: 0.8,
        showSelectedLabels: true,
        //backgroundColor: Colors.blue[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
            ),
            label: 'Background',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Colored',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.light,
            ),
            label: 'Transparent',
          )
        ],
      ),
    );
  }
}
