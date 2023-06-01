import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:custom_info_window/custom_info_window.dart';

class MapMarker{
  late LatLng latLang;
  late String name;
  late String genre;

  MapMarker({
    required this.latLang,
    required this.name,
    required this.genre,
  });
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
      latLang: LatLng(22.99268214404576, 120.22167562515983),
      name: "御私藏",
      genre: "珍珠奶茶店",
    ),
    MapMarker(
      latLang: LatLng(22.992964815833684, 120.22146017591658),
      name: "植作茶《臺南長榮店》",
      genre: "珍珠奶茶店",
    ),
    MapMarker(
      latLang: LatLng(22.993581845376646, 120.22603831398831,),
      name: '在島之後After Island. 餐酒館',
      genre: '餐酒館'
    ),
  ];

  //Marker API
  void loadMarker(List<MapMarker> mapMarker){
    for(int i=0; i<mapMarker.length; i++){
      allMarkers.add(Marker(
        markerId: MarkerId(i.toString()),
        position: mapMarker[i].latLang, 
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(
          title: mapMarker[i].name,
          snippet: mapMarker[i].genre,
        ),
        onTap:(){
          _center = mapMarker[i].latLang;
          // _customInfoWindowController.addInfoWindow!(
          //   const Text("hello"),
          //   mapMarker[i].latLang,
          // );
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

        )
    );
  }
}