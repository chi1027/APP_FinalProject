import 'package:flutter/material.dart';
import 'main.dart';
import 'sightPage.dart';

class UserFavoritePage extends StatelessWidget {
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
  //func(user.ID)return dir; //愛好搜尋
  var dir = [{"store":"甘谷咖啡","money":"100"},{"store":"五桐號WooTEA台南成大店","money":"100"},
    {"store":"Cheers Bar 無囯籍","money":"100"}];
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
                                  "Favorite",
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
                            var money = dir[index]['money'];
                            return Container(
                                  width: 500,
                                  height: 125,
                                  child: Column(
                                    children: [
                                      Container(
                                          width: 500.0,
                                          height: 100.0,
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
                                              child: MaterialButton(
                                                  padding: EdgeInsets.zero,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(15),
                                                          bottomLeft: Radius.circular(15))),
                                                  elevation: 0,
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SightPage(store.toString())));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          store.toString(),
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            fontFamily: 'Courgette',)
                                                      ),
                                                      Text(
                                                          money.toString(),
                                                          style: TextStyle(
                                                            color: Colors.black54,
                                                            fontSize: 15,
                                                            fontFamily: 'Courgette',)
                                                      ),
                                                    ],
                                                  )
                                              ),
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
