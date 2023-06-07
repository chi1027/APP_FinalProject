import 'package:flutter/material.dart';
import 'main.dart';
import 'sightPage.dart';

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
  String data = "";
  var dir;


// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    if(key=="cafe"){
      /////////////////////////////////////////////////////////////////////////////////////
      //key是關鍵字 func(key)return dir; //搜尋結果
      dir = [{"store":"甘谷咖啡", "dis":"台南市東區裕豐街54巷1號","star":"4.5","money":"100"},{"store":"黑早咖啡", "dis":"台南市東區慶東街115號","star":"4.5","money":"100"},
        {"store":"Dr.Bean", "dis":"台南市安平區怡平路410巷33號","star":"4.5","money":"100"},{"store":"咖啡平方 東安店", "dis":"台南市東區東安路93號","star":"4.5","money":"100"},
        {"store":"生命樹咖啡", "dis":"台南市東區小東路350號","star":"4.5","money":"100"}];
      /////////////////////////////////////////////////////////////////////////////////////
    }
    else if(key=="drink"){
      /////////////////////////////////////////////////////////////////////////////////////
      //key是關鍵字 func(key)return dir; //搜尋結果
      dir = [{"store":"五桐號WooTEA台南成大店", "dis":"台南市東區勝利路143號","star":"4.5","money":"100"},{"store":"植作茶《臺南長榮店》", "dis":"台南市東區長榮路三段3號","star":"4.5","money":"100"},
        {"store":"御私藏", "dis":"台南市東區長榮路三段18號","star":"4.5","money":"100"},{"store":"迷客夏Milksha 臺南東安店", "dis":"台南市東區東安路121號","star":"4.5","money":"100"},
        {"store":"50嵐 成大店", "dis":"台南市東區長榮路三段22號","star":"4.5","money":"100"}];
      /////////////////////////////////////////////////////////////////////////////////////
    }
    else if(key=="bar"){
      /////////////////////////////////////////////////////////////////////////////////////
      //key是關鍵字 func(key)return dir; //搜尋結果
      dir = [{"store":"牛棚手作燒物-酒攤", "dis":"台南市東區東安路48巷53號","star":"4.5","money":"100"},{"store":"Cheers Bar 無囯籍", "dis":"台南市東區怡東路50號2樓","star":"4.5","money":"100"},
        {"store":"Bar Whisper", "dis":"台南市東區東寧路162號","star":"4.5","money":"100"},{"store":"Midnight Tainan", "dis":"台南市東區小東路296號","star":"4.5","money":"100"},
        {"store":"在島之後After Island. 餐酒館", "dis":"台南市東區東寧路201巷121號","star":"4.5","money":"100"}];
      /////////////////////////////////////////////////////////////////////////////////////
    }

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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation(1)));
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
                            child:
                            Column(
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
                                    child:
                                      MaterialButton(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15))),
                                      elevation: 0,
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => SightPage(store.toString())));
                                      },
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                  store.toString(),
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25,
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
                                  ),
                                  )
                                ),
                              ],
                            )
                          );
                        },
                        childCount: 5,
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
