import 'package:flutter/material.dart';
import 'package/alertDialog.dart';

TextEditingController _context = TextEditingController();

class CreateAccountPage extends StatelessWidget {
  var store = "maco";
  var id = 1;
  List<Widget> _getGradeStar(double score, int total) {
    List<Widget> _list = List<Widget>.empty(growable: true);
    for (var i = 0; i < total; i++) {
      double factor = (score - i);
      if (factor >= 1) {
        factor = 1.0;
      }else if (factor < 0){
        factor = 0;
      }
      Stack _st = Stack(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.grey,
          ),
          ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: factor,
                child: Icon(
                  Icons.star,
                  color: Colors.redAccent,
                ),
              )
          )
        ],
      );
      _list.add(_st);
    }
    return _list;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left:20, right: 20, top: 10, bottom: 10),
              child: Column(
                children: [
                  Expanded(flex:2,
                    child: Column(
                        children: [
                          //Spacer(flex: 10,),
                          Flexible(
                              flex: 6,
                              child:
                              Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontFamily: 'Courgette',
                                  ),
                                  textAlign: TextAlign.center
                              )
                          ),
                        ]
                    ),
                  ),
                  Spacer(flex: 1,),
                  Expanded(
                    flex:20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            flex:3,
                            fit : FlexFit.loose,
                            child: Row(
                              children: [
                                Flexible(
                                  flex:4,
                                  child: Text(
                                      "Name : ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: 'Courgette',
                                      ),
                                      textAlign: TextAlign.center
                                  ),
                                ),
                                Flexible(
                                  flex:6,
                                  child: TextField(
                                    autofocus: false,
                                    controller: _context,
                                    keyboardType: TextInputType.text,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        hintText: 'Type you name.',
                                        hintStyle: TextStyle(color: Colors.grey)),
                                    style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Spacer(flex: 1,),
                        Flexible(
                            flex:3,
                            fit : FlexFit.loose,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit : FlexFit.loose,
                                  child: Text(
                                      "Phone : ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: 'Courgette',
                                      ),
                                      textAlign: TextAlign.center
                                  ),
                                ),
                                Flexible(
                                  flex: 6,
                                  child: TextField(
                                    autofocus: false,
                                    controller: _context,
                                    keyboardType: TextInputType.text,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        hintText: 'Type your phone',
                                        hintStyle: TextStyle(color: Colors.grey)),
                                    style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Spacer(flex: 1,),
                        Flexible(
                            flex:3,
                            fit : FlexFit.loose,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit : FlexFit.loose,
                                  child: Text(
                                      "Password : ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: 'Courgette',
                                      ),
                                      textAlign: TextAlign.center
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: TextField(
                                    autofocus: false,
                                    controller: _context,
                                    keyboardType: TextInputType.text,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        hintText: 'Type your password',
                                        hintStyle: TextStyle(color: Colors.grey)),
                                    style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Spacer(flex: 1,),
                        Flexible(
                            flex:3,
                            fit : FlexFit.loose,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit : FlexFit.loose,
                                  child: Text(
                                      "again : ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontFamily: 'Courgette',
                                      ),
                                      textAlign: TextAlign.center
                                  ),
                                ),
                                Flexible(
                                  flex: 10,
                                  child: TextField(
                                    autofocus: false,
                                    controller: _context,
                                    keyboardType: TextInputType.text,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        hintText: 'Type your password again',
                                        hintStyle: TextStyle(color: Colors.grey)),
                                    style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Spacer(flex: 2,),
                        Flexible(
                          flex: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('accept'),
                                onPressed: () {
                                  bool flag = false;
                                  if(flag){
                                    Navigator.pop(context);
                                  }
                                  else {
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                      title: const Text('AlertDialog'),
                                      content: const Text('name have already register.'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                    );
                                  }
                                },
                              ),
                              ElevatedButton(
                                child: Text('back'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      );
  }
}