import 'package:flutter/material.dart';
import 'main.dart';

class AchievemenyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverAppBarExample(),
    );
  }
}

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  /////////////////////////////////////////////////////////////////////////////////////
  //func(user.ID)return dir; //成就搜尋
  var dir = [{"achievement":"捧在手裡，甜在心中！", "context":"去過三家飲料店"},{"achievement":"我有酒，你有故事嗎？", "context":"去過三家酒吧"},
    {"achievement":"享受的不僅僅是咖啡", "context":"去過三家咖啡店"}];
  /////////////////////////////////////////////////////////////////////////////////////

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    /////////////////////////////////////////////////////////////////////////////////////
    // dir func(user.ID)　return list; list=[0,1,0]
    List list=[0,1,0];
    /////////////////////////////////////////////////////////////////////////////////////
    return Scaffold(
        body:SafeArea(
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
                            flex:2,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back_ios),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation(2)));
                              },
                            )
                          ),
                          Spacer(flex: 9,),
                          Flexible(
                            flex:17,
                            child: Text(
                              "Award",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Courgette',)
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
                  child: CustomScrollView(
                    slivers: <Widget>[
                      const SliverToBoxAdapter(),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                          var achievement = dir[index]['achievement'];
                          var context = dir[index]['context'];
                          if (list[index] == 1){
                            return Container(
                              width: 500,
                              height: 180,
                              child: Column(
                                children: [
                                  Container(
                                    width: 500.0,
                                    height: 150.0,
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black12,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left:10, right: 10, top: 10, bottom: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              achievement.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 30,
                                                fontFamily: 'Courgette',)
                                          ),
                                          Text(
                                              context.toString(),
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 20,
                                                fontFamily: 'Courgette',)
                                          ),
                                        ],
                                      )
                                    )
                                  ),
                                ],
                              )
                            );
                          }
                          else{
                            return Container(
                              width: 500,
                              height: 180,
                              child: Column(
                                children: [
                                  Container(
                                    width: 500.0,
                                    height: 150.0,
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left:10, right: 10, top: 10, bottom: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "???",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontFamily: 'Courgette',)
                                          ),
                                        ],
                                      )
                                    )
                                  ),
                                ],
                              )
                            );
                          }
                          },
                          childCount: 3,
                        ),
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
