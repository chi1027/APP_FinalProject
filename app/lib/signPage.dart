import 'package:flutter/material.dart';
import 'package:innovative_mobile_networks_apps/createAccountPage.dart';
import 'createAccountPage.dart';

TextEditingController _account = TextEditingController();
TextEditingController _password = TextEditingController();

class SignPage extends StatelessWidget {
  var name = "000";
  var id = 1;
  int page = 5;
  // This widget is the root of your application.
  void _onItemClick(int index) {
    page=index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left:40, right: 40, top: 40, bottom: 40),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child:
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Login",
                              style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Courgette',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex:7,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child:
                        Column(
                          children: <Widget>[
                            TextField(
                              autofocus: true,
                              controller: _account, //设置controller
                              decoration: InputDecoration(

                                  labelText: "account",
                                  hintText: "",
                                  prefixIcon: Icon(Icons.person)
                              ),
                            ),
                            TextField(
                              controller: _password,
                              decoration: InputDecoration(
                                  labelText: "password",
                                  prefixIcon: Icon(Icons.lock)
                              ),
                              obscureText: true,
                            ),
                            Spacer(flex:1),
                            Container(
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.black87, borderRadius: BorderRadius.circular(20)),
                              child: TextButton(
                                onPressed: () {
                                  if(_account.text == "000" && _password.text == "000"){
                                    Navigator.pop(context, "False");
                                  }
                                  else{
                                    print("ok");
                                    print(_account.text);
                                    print(_password.text);
                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                            ),
                            Container(
                              height: 50,
                              width: 250,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => CreateAccountPage()));
                                },
                                child: Text(
                                  'New User? Create Account',
                                  style: TextStyle(color: Colors.black87, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
