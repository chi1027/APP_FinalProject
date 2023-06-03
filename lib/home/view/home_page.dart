import 'package:flutter/material.dart';
import '/searchPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/app/app.dart';
import '/home/home.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left:20, right: 20, top: 10, bottom: 10),
            child: Column(
              children: [
                Expanded(flex:2,
                  child: Column(
                    children: [
                      Spacer(flex: 5,),
                      Row(
                          children: [
                            Flexible(
                              flex:17,
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(6),
                                child: TextFormField(
                                  autofocus: false, //是否將屬標預設放在搜尋欄位
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      disabledBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: 'Search your favorite store',
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                            ),
                          ]
                      ),
                      Spacer(flex: 5,)
                    ],
                  ),
                ),
                Expanded(
                  flex:12,
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 150,
                        child: Container(
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            elevation: 0,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(data:"drink")))
                            },
                            child:Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 5 / 2,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/drink.jpg',
                                        fit: BoxFit.fitHeight,
                                      )),
                                ),],
                            )
                          ),
                        )
                      ),
                      Spacer(flex: 1),
                      Container(
                          width: 500,
                          height: 150,
                          child: Container(
                            child: MaterialButton(
                                padding: EdgeInsets.zero,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15))),
                                elevation: 0,
                                onPressed: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(data:"bar")))
                                },
                                child:Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 5 / 2,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/bar.jpg',
                                            fit: BoxFit.fitHeight,
                                          )),
                                    ),],
                                )
                            ),
                          )
                      ),
                      Spacer(flex: 1),
                      Container(
                          width: 500,
                          height: 150,
                          child: Container(
                            child: MaterialButton(
                                padding: EdgeInsets.zero,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15))),
                                elevation: 0,
                                onPressed: () => {
                                Future.delayed(Duration.zero, () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(data:"cafe")));
                                })
                                },
                                child:Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 5 / 2,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/cafe.jpg',
                                            fit: BoxFit.fitHeight,
                                          )),
                                    ),],
                                )
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        )
    );
  }
}
