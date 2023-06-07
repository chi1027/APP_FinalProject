import 'package:flutter/material.dart';
import 'mapPage.dart';

class Sight{
  String storeName;
  int ID;
  String address;
  double star;
  String type;
  int price;
  Sight(this.ID, this.storeName, this.address, this.star,this.type,this.price);
}

class SightPage extends StatelessWidget {
  String sightName;
  SightPage(this.sightName);
  late String re1 = "無";
  late String re2 = "無";
  late String re3 = "無";
  @override
  Widget build(BuildContext context) {
    ////////////////////////////////////////////////////////////////////////////////////
    // func(sightName) return Sight;
    Sight sight = Sight(1, sightName, "台南市東區勝利路143號", 4.5, "drink",100);
    ////////////////////////////////////////////////////////////////////////////////////
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left:20, right: 20, top: 10, bottom: 10),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                    ),
                  ],
                ),
                AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset('images/bar.jpg', fit: BoxFit.cover),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            sightName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Text(
                                "類型： ",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 4),
                              Text(
                                sight.type,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Text(
                                "地址： ",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 4),
                              Text(
                                sight.address,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Text(
                                "好感度: ",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 4),
                              Text(
                                "80%",
                                style: TextStyle(fontSize: 16,),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                              SizedBox(width: 4),
                              Text(
                                sight.star.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.amber,
                                size: 18,
                              ),
                              SizedBox(width: 4),
                              Text(
                                sight.price.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          ///////////////////////////////////////////////////////////////////////////////////////////
                          //推薦系統
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Text(
                                "類似的店家: ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 4),
                              Text(
                                re1.toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 4),
                              GestureDetector(
                                child: Text(
                                  re2.toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 4),
                              Text(
                                re3.toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          /////////////////////////////////////////////////////////////////////////////////////
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
}

