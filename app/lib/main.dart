import 'dart:ffi';
import 'package:flutter/material.dart';
import "HomePage.dart";
import "userPage.dart";
import 'mapPage.dart';
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
      home: CommentPage(),
    );
  }
}

class DemoIconToggleButtons extends StatefulWidget {
  const DemoIconToggleButtons({super.key});

  @override
  State<DemoIconToggleButtons> createState() => _DemoIconToggleButtonsState();
}

class _DemoIconToggleButtonsState extends State<DemoIconToggleButtons> {
  bool standardSelected = false;
  bool filledSelected = false;
  bool tonalSelected = false;
  bool outlinedSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              isSelected: standardSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  standardSelected = !standardSelected;
                });
              },
            ),
            const SizedBox(width: 10),
            IconButton(
              isSelected: standardSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: null,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.filled(
              isSelected: filledSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  filledSelected = !filledSelected;
                });
              },
            ),
            const SizedBox(width: 10),
            IconButton.filled(
              isSelected: filledSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: null,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.filledTonal(
              isSelected: tonalSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  tonalSelected = !tonalSelected;
                });
              },
            ),
            const SizedBox(width: 10),
            IconButton.filledTonal(
              isSelected: tonalSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: null,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.outlined(
              isSelected: outlinedSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  outlinedSelected = !outlinedSelected;
                });
              },
            ),
            const SizedBox(width: 10),
            IconButton.outlined(
              isSelected: outlinedSelected,
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              onPressed: null,
            ),
          ],
        ),
      ],
    );
  }
}
