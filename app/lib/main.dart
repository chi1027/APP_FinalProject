import 'dart:ffi';
import 'package:flutter/material.dart';
import "HomePage.dart";
import "userPage.dart";
import 'mapPage.dart';
import 'sightPage.dart';


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
      home: BottomNavigation(1),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  var _selectedIndex;
  BottomNavigation(this._selectedIndex);
  @override
  State<BottomNavigation> createState() =>
      _BottomNavigationBarState(_selectedIndex);
}

class _BottomNavigationBarState
    extends State<BottomNavigation> {
  var _selectedIndex;
  _BottomNavigationBarState(this._selectedIndex);
  List<Widget> page = <Widget>[MapPage(),HomePage(),UserPage()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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


