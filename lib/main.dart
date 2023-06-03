import 'dart:ffi';
import 'package:flutter/material.dart';
import "/home/home.dart";
import "/user/user.dart";
import 'mapPage.dart';
import 'createAccountPage.dart';
import 'commentPage.dart';
import 'package/Flutter_Rating_Bar.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import '/app/app.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:lesson_1/theme.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp();

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  runApp(App(authenticationRepository: authenticationRepository));
}

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
