import 'package:flutter/material.dart';
import 'main.dart';

var key;

class SearchPage extends StatelessWidget {
  var data;
  SearchPage({this.data});
  @override
  Widget build(BuildContext context) {
    key = data;

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
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  String data = "";
  /////////////////////////////////////////////////////////////////////////////////////
  //key是關鍵字 func(key)return dir; //搜尋結果
  var dir = [{"store":"ooo", "dis":"五福二路","star":"4.9","money":"400"},{"store":"maco", "dis":"五福二路","star":"4.9","money":"400"},
    {"store":"yayaya", "dis":"五福二路","star":"4.9","money":"400"}];
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation()));
                              },
                            )
                          ),
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
                                    hintText: key.toString(),//'Search your favorite store',
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
                child: CustomScrollView(
                  slivers: <Widget>[
                    const SliverToBoxAdapter(),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              var store = dir[index]['store'];
                              var dis = dir[index]['dis'];
                              var star = dir[index]['star'];
                              var money = dir[index]['money'];
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
                                        Row(
                                          children: [
                                            Text(
                                                store.toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontFamily: 'Courgette',)
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.blue[300],
                                              size: 20,
                                            ),
                                            Text(
                                                dis.toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',)
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow[200],
                                              size: 20,
                                            ),
                                            Text(
                                                star.toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',)
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.money,
                                              color: Colors.green[400],
                                              size: 20,
                                            ),
                                            Text(
                                                money.toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',)
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  )
                                ),
                              ],
                            )
                          );
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
