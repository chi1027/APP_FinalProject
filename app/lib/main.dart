import 'dart:ffi';
import 'package:flutter/material.dart';
import "HomePage.dart";
import "userPage.dart";
import 'mapPage.dart';
import 'createAccountPage.dart';
import 'commentPage.dart';
import 'package/Flutter_Rating_Bar.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:lesson_1/theme.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() =>
      _BottomNavigationBarState();
}

class _BottomNavigationBarState
    extends State<BottomNavigation> {
  int _selectedIndex = 1;
  List<Widget> page = <Widget>[MapPage(),HomePage(),UserPage()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'User',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
      ),
    );
  }
}
