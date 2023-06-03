import 'package:flutter/widgets.dart';
import '/app/app.dart';
import '/home/home.dart';
import '/login/login.dart';
import '/user/user.dart';
List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
