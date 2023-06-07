import 'package:flutter/material.dart';
import 'package:innovative_mobile_networks_apps/pages/auth/login_page.dart';
import "signPage.dart";
import "account.dart";
import 'achievementPage.dart';
import 'main.dart';
import 'userCommentPage.dart';
import 'userFavoritePage.dart';
import 'package:provider/provider.dart';
import '/service/auth_service.dart';
import '/helper/helper_function.dart';
import '/widgets/widgets.dart';

class UserPage extends StatefulWidget {
  UserPage({Key? key})
      : super(key: key);
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>{
  String userName = "";
  String email = "";
  String userPhoto = "";
  AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    gettingUserData();
  }
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
    await HelperFunctions.getUserPhotoFromSF().then((val) {
      setState(() {
        userPhoto = val!;
      });
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                                        CircleAvatar(
                                          backgroundImage:
                                              Image.network(userPhoto).image,
                                          radius: 100,
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
                                                userName,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontFamily: 'Courgette',
                                                ),
                                                textAlign: TextAlign.center
                                            ),
                                            Text(
                                                "email : " + email,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
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
                                      onPressed: () => {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => AchievemenyPage()))
                                      },
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
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserCommentPage()));
                                      },
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
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserFavoritePage()));
                                      },
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
                                      onPressed: () {
                                        signOut(context);
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
                                              user.name,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'Courgette',
                                              ),
                                              textAlign: TextAlign.center
                                          ),
                                          Text(
                                              "ID : " + user.ID.toString(),
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
                                    onPressed: () => {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => AchievemenyPage()))
                                    },
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
                                    onPressed: () => {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserCommentPage()))
                                    },
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
                                    onPressed: () => {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserFavoritePage()))
                                    },
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
                                    onPressed: (){
                                      user.name = "default";
                                      user.ID = 0;
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation(1)));
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
  signOut(context) async {
      await authService.signOut().then((value) async {
        if (value == true) {
          nextScreenReplace(context, const LoginPage());
      }});
    }
  }