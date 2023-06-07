import 'package:flutter/material.dart';
import 'main.dart';

class UserCommentPage extends StatelessWidget {
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
  var dir = [{"store":"Dr.Bean","date":"2023/6/8","money":"100","star":"4.5"},{"store":"五桐號WooTEA台南成大店", "date":"2023/6/8","money":"100","star":"4.5"},
    {"store":"Cheers Bar 無囯籍","date":"2023/6/8","money":"100","star":"4.5"}];
  /////////////////////////////////////////////////////////////////////////////////////

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
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
                                  "Comment",
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
                            var store = dir[index]['store'];
                            var date = dir[index]['date'];
                            var money = dir[index]['money'];
                            var star = dir[index]['star'];
                            return Container(
                                  width: 500,
                                  height: 160,
                                  child: Column(
                                    children: [
                                      Container(
                                          width: 500.0,
                                          height: 140.0,
                                          padding: EdgeInsets.all(1.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                20),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.only(left: 10,
                                                  right: 10,
                                                  top: 10,
                                                  bottom: 10),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                      store.toString(),
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 25,
                                                        fontFamily: 'Courgette',)
                                                  ),
                                                  Text(
                                                      date.toString(),
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 20,
                                                        fontFamily: 'Courgette',)
                                                  ),
                                                  Text(
                                                      money.toString(),
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 20,
                                                        fontFamily: 'Courgette',)
                                                  ),
                                                  Text(
                                                      star.toString(),
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
                          },
                          childCount: dir.length,
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
