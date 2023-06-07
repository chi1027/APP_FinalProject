import 'package:flutter/material.dart';
import 'package/Flutter_Rating_Bar.dart';
TextEditingController _item = TextEditingController();
TextEditingController _money = TextEditingController();
TextEditingController _context = TextEditingController();
bool public = false;

class CommentPage extends StatelessWidget {
  var store;
  var data;
  CommentPage({this.store = "True", this.data = "true"});

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
                        Row(
                          children: [
                            Flexible(
                                flex: 6,
                                child:
                                Text(
                                    "Comment",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontFamily: 'Courgette',
                                    ),
                                    textAlign: TextAlign.center
                                )
                            ),
                            Spacer(flex: 5,),
                            Center(
                                child: DemoIconToggleButtons(),
                            ),
                          ]
                        ),
                      ]
                  ),
                ),
                Expanded(
                  flex:20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 4,
                        fit : FlexFit.loose,
                        child: Text(
                            "Store : "+store.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Courgette',
                            ),
                            textAlign: TextAlign.center
                        ),
                      ),
                      Flexible(
                        flex:3,
                        fit : FlexFit.loose,
                        child: Row(
                          children: [
                            Flexible(
                              flex:4,
                              child: Text(
                                  "items : ",
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
                                controller: _item,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                decoration: InputDecoration(
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: 'Items you buy.',
                                    hintStyle: TextStyle(color: Colors.grey)),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Courgette',
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                      Flexible(
                          flex:3,
                          fit : FlexFit.loose,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 4,
                                fit : FlexFit.loose,
                                child: Text(
                                    "money : ",
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
                                  controller: _money,
                                  keyboardType: TextInputType.text,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                      disabledBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: 'Money you pay.',
                                      hintStyle: TextStyle(color: Colors.grey)),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Courgette',
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                      Flexible(
                          flex:3,
                          fit : FlexFit.loose,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit : FlexFit.tight,
                                child: Text(
                                    "star : ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontFamily: 'Courgette',
                                    ),
                                    textAlign: TextAlign.center
                                ),
                              ),
                              Flexible(
                                flex: 8,
                                fit : FlexFit.tight,
                                child: FRB(),
                              ),
                            ],
                          )
                      ),

                      //Spacer(flex:1),
                      Flexible(
                        flex:10,
                        fit : FlexFit.loose,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 2,
                              fit : FlexFit.tight,
                              child: Text(
                                  "content : ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontFamily: 'Courgette',
                                  ),
                                  textAlign: TextAlign.center
                              ),
                            ),
                            Flexible(
                              flex: 8,
                              fit : FlexFit.tight,
                              child: Container(
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(6),
                                  border: new Border.all(
                                    color: Colors.black54,
                                    width: 1.0,
                                  ),
                                ),
                                child: TextField(
                                  autofocus: false,
                                  controller: _context,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  maxLines: 5,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Courgette',
                                  ),
                                ),

                              ),
                            ),
                          ],
                        )
                      ),
                      Spacer(flex: 1,),
                      Row(
                        children: [
                          ElevatedButton(
                            child: Text('accept'),
                            onPressed: () {
                              /////////////////////////////////////////////////////////////////////////////
                              //將評論儲存
                              //
                              /////////////////////////////////////////////////////////////////////////////
                              Navigator.pop(context);
                            },
                          ),
                          ElevatedButton(
                            child: Text('cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
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
class DemoIconToggleButtons extends StatefulWidget {
  const DemoIconToggleButtons({super.key});
  @override
  State<DemoIconToggleButtons> createState() => _DemoIconToggleButtonsState();
}

class _DemoIconToggleButtonsState extends State<DemoIconToggleButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton.filledTonal(
          isSelected: public,
          icon: const Icon(Icons.public,color: Colors.black12,size:30),
          selectedIcon: const Icon(Icons.public,color: Colors.lightBlueAccent,size:30),
          onPressed: () {
            setState(() {
              public = !public;
              print(public);
            });
          },
        )
      ],
    );
  }
}
