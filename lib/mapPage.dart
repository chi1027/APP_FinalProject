import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:custom_info_window/custom_info_window.dart';
enum StoreType{
  cafe,
  beverage,
  bar,
}
String storeTypeToString(StoreType type){
  if(type == StoreType.cafe){
    return "咖啡廳";
  }else if(type == StoreType.beverage){
    return "飲料店";
  }else if(type == StoreType.bar){
    return "酒吧";
  }else{
    return "其他";
  }
}

class MapMarker{
  late LatLng latLang;
  late String name;
  late StoreType type;

  MapMarker({
    required this.latLang,
    required this.name,
    required this.type,
  });
}

class CustomInfoWindow extends StatefulWidget {
  final String title;
  final StoreType type;
  final String review;
  final String address;
  final String price;

  const CustomInfoWindow({
    required this.title,
    required this.type,
    required this.review,
    required this.address,
    required this.price,
  });

  @override
  _CustomInfoWindowState createState() => _CustomInfoWindowState();
}

class _CustomInfoWindowState extends State<CustomInfoWindow> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 16),
      child: InkWell(
        splashColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(4, 4),
                blurRadius: 16,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
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
                                widget.title,
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
                                    storeTypeToString(widget.type) as String,
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
                                    widget.address,
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
                                    widget.review,
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
                                    widget.price,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class MapPage extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController _searchController = TextEditingController();


  static LatLng _center = const LatLng(22.997641853233787, 120.2206849481563);
  // CustomInfoWindowController _customInfoWindowController = CustomInfoWindowController();

  List<Marker> allMarkers = [];
  // Test data
  List<MapMarker> mapMarkerTemp = [
    MapMarker(
      latLang: const LatLng(22.99268214404576, 120.22167562515983),
      name: "御私藏",
      type: StoreType.beverage,
    ),
    MapMarker(
      latLang: const LatLng(22.992964815833684, 120.22146017591658),
      name: "植作茶《臺南長榮店》",
      type: StoreType.beverage,
    ),
    MapMarker(
      latLang: const LatLng(22.993581845376646, 120.22603831398831,),
      name: '在島之後After Island. 餐酒館',
      type: StoreType.bar,
    ),
    MapMarker(
      latLang: const LatLng(22.99352406850043, 120.22317354825209),
      name: 'For you espresso 為你·煮咖啡',
      type: StoreType.cafe,
    ),
  ];

  //Marker API
  void loadMarker(List<MapMarker> mapMarker){
    for(int i=0; i<mapMarker.length; i++){
      late BitmapDescriptor icon;
      if(mapMarker[i].type == StoreType.beverage){
        icon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
      }else if(mapMarker[i].type == StoreType.bar){
        icon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange);
      }else if (mapMarker[i].type == StoreType.cafe){
        icon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet);
      }
      allMarkers.add(Marker(
        markerId: MarkerId(i.toString()),
        position: mapMarker[i].latLang,
        icon: icon,
        infoWindow: InfoWindow(
          title: mapMarker[i].name,
        ),
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                // height: 400, // 设置容器高度
                child: CustomInfoWindow(
                  title: mapMarker[i].name,
                  type: mapMarker[i].type,
                  review: "4.5",
                  address: "台南市中西區民族路二段 206 號",
                  price: "100",
                ),
              );
            },
          );
        },
      ));
    }
    setState(() {
      _center = mapMarker[0].latLang; // 將畫面中心移到第一個點
    });
  }

  void clearMarkers(){
    setState(() {
      allMarkers.clear();
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }



  // Current location API
  Future<Position> _getCurrentLocation() async{
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      return Future.error('Location services are disabled.');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error('Location permissions are denied');
      }
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState(){
    super.initState();
    loadMarker(mapMarkerTemp);
    // allMarkers.addAll(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Spacer(flex: 5),
                    Row(
                      children: [
                        Flexible(
                          flex: 17,
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(6),
                            child: TextFormField(
                              autofocus: false,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.lightBlueAccent,
                                ),
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Search your favorite store',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 5),
                  ],
                ),
              ),
              Expanded(
                flex: 12,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 17.0,
                  ),
                  markers: Set<Marker>.of(allMarkers),
                  myLocationButtonEnabled: true,
                  mapType: MapType.normal,
                  myLocationEnabled: true,

                ),
              ),
            ],
          ),
        ),
      ),
      // this button is for testing
      // floatingActionButton: FloatingActionButton(
      //         onPressed: () {
      //           Position position = _getCurrentLocation() as Position;
      //           setState(() {
      //             _center = LatLng(position.latitude, position.longitude);
      //           });
      //         },
      //         child: Icon(Icons.location_on),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}