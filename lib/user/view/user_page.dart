import 'package:flutter/material.dart';
import '/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/app/app.dart';
import '/home/home.dart';
import '/sign_up/sign_up.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: UserPage());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
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
                                              user.name.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'Courgette',
                                              ),
                                              textAlign: TextAlign.center
                                          ),
                                          Text(
                                              "ID : " + user.email.toString(),
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
                                    onPressed: () {context.read<AppBloc>().add(const AppLogoutRequested());
                                    Navigator.of(context).push<void>(LoginPage.route());
                                      },
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