import 'dart:ffi';
import 'package:flutter/material.dart';
import "HomePage.dart";
import "userPage.dart";
import 'mapPage.dart';
import 'sightPage.dart';
import 'package:provider/provider.dart';
import '/helper/helper_function.dart';
import '/pages/auth/login_page.dart';
import '/shared/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;
  //String userName = "";
  //String email = "";

  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: _isSignedIn ? BottomNavigation(1) : const LoginPage(),
    );
  }
}

/*class MyApp extends StatelessWidget {
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
 */
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
  /*String userName = "";
  String email = "";
  gettingUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    // getting the list of snapshots in our stream
  }*/

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