import 'package:flutter/material.dart';
import "signPage.dart";

class UserPage extends StatelessWidget {
  String data  ; //增加一個參數跟建構子提供我們傳遞資料
  UserPage({this.data = "True"});
  var name = "OOO";
  var id = 1;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if(data == "True"){
      Future.delayed(Duration.zero, () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignPage())).then((value) {
          data = value.toString();
        });
      });
    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left:20, right: 20, top: 10, bottom: 10),
            child: Column(
              children: [
                Expanded(flex:1,
                  child: Column(
                      children: [
                        //Spacer(flex: 10,),
                        Row(
                            children: [
                              Flexible(
                                  flex: 5,
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Material(
                                      //elevation: 10,
                                      borderRadius: BorderRadius.circular(10),
                                      //color: Colors.grey,
                                      child:
                                      IconButton(
                                        icon: Icon(Icons.account_circle,
                                          color: Colors.black38,
                                          size: 100,),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  )
                              ),
                              Spacer(flex: 2,),
                              Flexible(
                                flex: 10,
                                child: Material(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(color: Colors.white60, width: 1),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(""),
                                          Text(
                                              name,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'Courgette',
                                              ),
                                              textAlign: TextAlign.center
                                          ),
                                          Text(
                                              "ID : " + id.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'Courgette',
                                              ),
                                              textAlign: TextAlign.center
                                          )
                                        ],
                                      ),
                                    )
                                ),
                              )
                            ]
                        ),

                      ]
                  ),
                ),
                Expanded(
                    flex:3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.white60, width: 1),
                            ),
                            child: Container(
                                child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    color: Colors.white60,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side:  const BorderSide(color: Colors.black38, width: 1)
                                    ),
                                    elevation: 0,
                                    onPressed: () => {},
                                    child: Row(
                                      children: [
                                        Spacer(flex: 5,),
                                        Flexible(
                                            flex: 5,
                                            fit: FlexFit.tight,
                                            child:
                                            Text("Award",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontFamily: 'Courgette',
                                                )
                                            )
                                        ),
                                        Spacer(flex: 4,),
                                        Flexible(
                                            flex: 5,
                                            fit: FlexFit.loose,
                                            child: Icon(
                                              Icons.military_tech,
                                              color: Colors.deepOrange[200],
                                              size: 70,
                                            )
                                        ),
                                      ],
                                    )

                                )
                            ),
                          ),
                        ),
                        Spacer(flex: 1,),
                        Expanded(
                          flex: 5,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.white60, width: 1),
                            ),
                            child: Container(
                                child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    color: Colors.white60,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side:  const BorderSide(color: Colors.black38, width: 1)
                                    ),
                                    elevation: 0,
                                    onPressed: () => {},
                                    child: Row(
                                      children: [
                                        Spacer(flex: 4,),
                                        Flexible(
                                            flex: 8,
                                            fit: FlexFit.tight,
                                            child:
                                            Text("comment",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontFamily: 'Courgette',
                                                )
                                            )
                                        ),
                                        Spacer(flex: 4,),
                                        Flexible(
                                            flex: 5,
                                            fit: FlexFit.loose,
                                            child: Icon(
                                              Icons.reviews,
                                              color: Colors.blue[200],
                                              size: 50,
                                            )
                                        ),
                                      ],
                                    )
                                )
                            ),
                          ),
                        ),
                        Spacer(flex: 1,),
                        Expanded(
                          flex: 5,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.white60, width: 1),
                            ),
                            child: Container(
                                child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    color: Colors.white60,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side:  const BorderSide(color: Colors.black38, width: 1)
                                    ),
                                    elevation: 0,
                                    onPressed: () => {},
                                    child: Row(
                                      children: [
                                        Spacer(flex: 5,),
                                        Flexible(
                                            flex: 7,
                                            fit: FlexFit.tight,
                                            child:
                                            Text("Favorite",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontFamily: 'Courgette',
                                                )
                                            )
                                        ),
                                        Spacer(flex: 5,),
                                        Flexible(
                                            flex: 5,
                                            fit: FlexFit.loose,
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red[200],
                                              size: 50,
                                            )
                                        ),
                                      ],
                                    )
                                )
                            ),
                          ),
                        ),
                        Spacer(flex: 1,),
                        Expanded(
                          flex: 5,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.white60, width: 1),
                            ),
                            child: Container(
                                child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    color: Colors.white60,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side:  const BorderSide(color: Colors.black38, width: 1)
                                    ),
                                    elevation: 0,
                                    onPressed: () => {},
                                    child: Row(
                                      children: [
                                        Spacer(flex: 5,),
                                        Flexible(
                                            flex: 6,
                                            fit: FlexFit.tight,
                                            child:
                                            Text("Logout",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontFamily: 'Courgette',
                                                )
                                            )
                                        ),
                                        Spacer(flex: 5,),
                                        Flexible(
                                            flex: 4,
                                            fit: FlexFit.loose,
                                            child: Icon(
                                              Icons.logout,
                                              color: Colors.black38,
                                              size: 50,
                                            )
                                        ),
                                      ],
                                    )

                                )
                            ),
                          ),
                        ),
                        Spacer(flex: 5,),
                      ],
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}