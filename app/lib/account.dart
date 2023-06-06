import 'package:flutter/material.dart';

class User{
  String name;
  int ID;
  User(this.name, this.ID);
  ///////////////////////////////////////////////////////
  // user with fire base
  //User.fromFirebase(Map<dynamic,dynamic> json)
  //    : name = json['name'],
  //      avatar = json['avatar'];
  //////////////////////////////////////////////////////////
}

// global var
User user = User("default",0);
