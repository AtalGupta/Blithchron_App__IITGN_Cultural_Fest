// import 'dart:io';

// import 'package:flutter/material.dart';
// // import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';
// // import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/platform_interface.dart';

// // // class Mapp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Flutter Isolate Demo',
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.blue,
// // //       ),
// // //       home: InAppWebViewExampleScreen(),
// // //     );
// // //   }
// // // }

// // // class InAppWebViewExampleScreen extends StatefulWidget {
// // //   @override
// // //   _InAppWebViewExampleScreenState createState() =>
// // //       new _InAppWebViewExampleScreenState();
// // // }

// // // class _InAppWebViewExampleScreenState extends State<InAppWebViewExampleScreen> {
// // //   InAppWebViewController? webView;
// // //   ContextMenu? contextMenu;
// // //   String url = "";
// // //   double progress = 0;
// // //   CookieManager _cookieManager = CookieManager.instance();

// // //   void requestPermission() async {
// // //     Map<Permission, PermissionStatus> statuses =
// // //         await [Permission.location].request();
// // //   }

// // //   @override
// // //   void initState() {
// // //     super.initState();

// // //     requestPermission();

// // //     contextMenu = ContextMenu(
// // //         menuItems: [
// // //           ContextMenuItem(
// // //               androidId: 1,
// // //               iosId: "1",
// // //               title: "Special",
// // //               action: () async {
// // //                 print("Menu item Special clicked!");
// // //                 print(await webView?.getSelectedText());
// // //                 await webView?.clearFocus();
// // //               })
// // //         ],
// // //         options: ContextMenuOptions(hideDefaultSystemContextMenuItems: true),
// // //         onCreateContextMenu: (hitTestResult) async {
// // //           print("onCreateContextMenu");
// // //           print(hitTestResult.extra);
// // //           print(await webView?.getSelectedText());
// // //         },
// // //         onHideContextMenu: () {
// // //           print("onHideContextMenu");
// // //         },
// // //         onContextMenuActionItemClicked: (contextMenuItemClicked) async {
// // //           var id = (Platform.isAndroid)
// // //               ? contextMenuItemClicked.androidId
// // //               : contextMenuItemClicked.iosId;
// // //           print("onContextMenuActionItemClicked: " +
// // //               id.toString() +
// // //               " " +
// // //               contextMenuItemClicked.title);
// // //         });
// // //   }

// // //   @override
// // //   void dispose() {
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //         appBar: AppBar(title: Text("InAppWebView")),
// // //         //drawer: myDrawer(context: context),
// // //         body: SafeArea(
// // //             child: Column(children: <Widget>[
// // //           Container(
// // //             padding: EdgeInsets.all(20.0),
// // //             child: Text(
// // //                 "CURRENT URL\n${(url.length > 50) ? url.substring(0, 50) + "..." : url}"),
// // //           ),
// // //           Container(
// // //               padding: EdgeInsets.all(10.0),
// // //               child: progress < 1.0
// // //                   ? LinearProgressIndicator(value: progress)
// // //                   : Container()),
// // //           Expanded(
// // //             child: Container(
// // //               margin: const EdgeInsets.all(10.0),
// // //               decoration:
// // //                   BoxDecoration(border: Border.all(color: Colors.blueAccent)),
// // //               child: InAppWebView(
// // //                 contextMenu: contextMenu,
// // //                 initialUrlRequest: "https://www.google.co.in/maps/",
// // //                 initialFile: "assets/index.html",
// // //                 initialHeaders: {},
// // //                 initialOptions: InAppWebViewGroupOptions(
// // //                     crossPlatform: InAppWebViewOptions(
// // //                       // debuggingEnabled: true,
// // //                       useShouldOverrideUrlLoading: true,
// // //                     ),
// // //                     android: AndroidInAppWebViewOptions(
// // //                         //useHybridComposition: true
// // //                         )),
// // //                 androidOnGeolocationPermissionsShowPrompt:
// // //                     (InAppWebViewController controller, String origin) async {
// // //                   bool? result = await showDialog<bool>(
// // //                     context: context,
// // //                     barrierDismissible: false, // user must tap button!
// // //                     builder: (BuildContext context) {
// // //                       return AlertDialog(
// // //                         title: Text('Allow access location $origin'),
// // //                         content: SingleChildScrollView(
// // //                           child: ListBody(
// // //                             children: <Widget>[
// // //                               Text('Allow access location $origin'),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                         actions: <Widget>[
// // //                           TextButton(
// // //                             child: Text('Allow'),
// // //                             onPressed: () {
// // //                               Navigator.of(context).pop(true);
// // //                             },
// // //                           ),
// // //                           TextButton(
// // //                             child: Text('Denied'),
// // //                             onPressed: () {
// // //                               Navigator.of(context).pop(false);
// // //                             },
// // //                           ),
// // //                         ],
// // //                       );
// // //                     },
// // //                   );
// // //                   if (result!) {
// // //                     return Future.value(GeolocationPermissionShowPromptResponse(
// // //                         origin: origin, allow: true, retain: true));
// // //                   } else {
// // //                     return Future.value(GeolocationPermissionShowPromptResponse(
// // //                         origin: origin, allow: false, retain: false));
// // //                   }
// // //                 },
// // //                 onWebViewCreated: (InAppWebViewController controller) {
// // //                   webView = controller;
// // //                   print("onWebViewCreated");
// // //                 },
// // //                 // onLoadStart: (InAppWebViewController controller, String url) {
// // //                 //   print("onLoadStart $url");
// // //                 //   setState(() {
// // //                 //     this.url = url;
// // //                 //   });
// // //                 // },
// // //                 shouldOverrideUrlLoading:
// // //                     (controller, shouldOverrideUrlLoadingRequest) async {
// // //                   // var url = shouldOverrideUrlLoadingRequest.url;
// // //                   var uri = Uri.parse(url);

// // //                   if (![
// // //                     "http",
// // //                     "https",
// // //                     "file",
// // //                     "chrome",
// // //                     "data",
// // //                     "javascript",
// // //                     "about"
// // //                   ].contains(uri.scheme)) {
// // //                     if (await canLaunch(url)) {
// // //                       // Launch the App
// // //                       await launch(
// // //                         url,
// // //                       );
// // //                       // and cancel the request
// // //                       // return ShouldOverrideUrlLoadingAction.CANCEL;
// // //                     }
// // //                   }

// // //                   // return ShouldOverrideUrlLoadingAction.ALLOW;
// // //                 },
// // //                 // onLoadStop:
// // //                 //     (InAppWebViewController controller, String url) async {
// // //                 //   print("onLoadStop $url");
// // //                 //   setState(() {
// // //                 //     this.url = url;
// // //                 //   });
// // //                 // },
// // //                 // onProgressChanged:
// // //                 //     (InAppWebViewController controller, int progress) {
// // //                 //   setState(() {
// // //                 //     this.progress = progress / 100;
// // //                 //   });
// // //                 // },
// // //                 // onUpdateVisitedHistory: (InAppWebViewController controller,
// // //                 //     String url, bool androidIsReload) {
// // //                 //   print("onUpdateVisitedHistory $url");
// // //                 //   setState(() {
// // //                 //     this.url = url;
// // //                 //   });
// // //                 // },
// // //                 // onConsoleMessage: (controller, consoleMessage) {
// // //                 //   print(consoleMessage);
// // //                 // },
// // //               ),
// // //             ),
// // //           ),
// // //           ButtonBar(
// // //             alignment: MainAxisAlignment.center,
// // //             children: <Widget>[
// // //               // RaisedButton(
// // //               //   child: Icon(Icons.arrow_back),
// // //               //   onPressed: () {
// // //               //     if (webView != null) {
// // //               //       webView.goBack();
// // //               //     }
// // //               //   },
// // //               // ),
// // //               // RaisedButton(
// // //               //   child: Icon(Icons.arrow_forward),
// // //               //   onPressed: () {
// // //               //     if (webView != null) {
// // //               //       webView.goForward();
// // //               //     }
// // //               //   },
// // //               // ),
// // //               // RaisedButton(
// // //               //   child: Icon(Icons.refresh),
// // //               //   onPressed: () {
// // //               //     if (webView != null) {
// // //               //       webView.reload();
// // //               //     }
// // //               //   },
// // //               // ),
// // //             ],
// // //           ),
// // //         ])));
// // //   }
// // // }
// //
// //
// // okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
// class Map extends StatelessWidget {
//   const Map({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[50],
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Center(
//           child: Text(
//             "Map",
//             style: TextStyle(
//               fontSize: 28,
//               color: Color.fromARGB(255, 255, 255, 255),
//             ),
//           ),
//         ),
//       ),
//       // body: Center(child: Text('Map')),
//       // body: Center(
//       //   child: Image.asset('images/newcomingsoon.jpg'),
//       // ),
//       // body: Container(
//       //   padding: EdgeInsets.only(left: 20, right: 20, top: 200),
//       //   child: ClipRRect(
//       //     borderRadius: BorderRadius.circular(15.0),
//       //     child: Image.asset(
//       //       'images/newcomingsoon.jpg',
//       //     ),
//       //   ),
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.only(bottom: 75.0),
//         child: WebView(
//           // initialUrlRequest: 'https://blithchron.iitgn.ac.in/map/',
//         // androidOnGeolocationPermissionsShowPrompt:
//         //  Future<GeolocationPermissionShowPromptResponse?> Function(InAppWebViewController, String)? androidOnGeolocationPermissionsShowPrompt,
//           javascriptMode: JavascriptMode.unrestricted,
//           // initialUrl: 'https://blithchron.iitgn.ac.in/map/',
//           initialUrl: 'https://www.amazon.com/',
//           // initialUrl: 'https://www.google.com/maps',
//           // initialUrl: 'https://www.google.com/maps/@23.2118574,72.6860943,17z',
//         ),
//       ),
//     );
//   }
// }

// // okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

// // import 'dart:async';

// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/gestures.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart' show rootBundle;
// // import 'package:flutter/services.dart';
// // import 'package:google_maps_flutter/google_maps_flutter.dart';
// // // import 'package:instiapp/data/dataContainer.dart';
// // import 'package:location/location.dart';
// // import 'package:url_launcher/url_launcher.dart';

// // class MapInfoWindow {
// //   String imagePath;
// //   LatLng location;
// //   String locationName;
// //   String timing;
// //   String descriptionOne;
// //   String descriptionTwo;

// //   MapInfoWindow(
// //       {required this.imagePath,
// //       required this.location,
// //       required this.locationName,
// //       required this.timing,
// //       required this.descriptionOne,
// //       required this.descriptionTwo});
// // }

// // var keywordList = [];
// // var locationList = [];

// // class MapPage extends StatefulWidget {
// //   @override
// //   _MapPageState createState() => _MapPageState();
// // }

// // class _MapPageState extends State<MapPage>
// //     with AutomaticKeepAliveClientMixin<MapPage> {
// //   Completer<GoogleMapController> _controller = Completer();

// //   Location? _locationTracker = Location();

// //   StreamSubscription? _locationSubscription;

// //   Marker? marker;

// //   Circle? circle;

// //   static const LatLng _center = const LatLng(23.212838, 72.684738);

// //   Set<Marker> _markers = {};

// //   List<BitmapDescriptor> customIcons = List<BitmapDescriptor>(13);

// //   double mapInfoWindowPosition = -370;

// //   MapInfoWindow currentWindow = MapInfoWindow(
// //       imagePath: '',
// //       location: LatLng(0, 0),
// //       locationName: '',
// //       timing: '',
// //       descriptionOne: '',
// //       descriptionTwo: '');

// //   var mapInfoWindowList = [];

// //   String _mapStyle;

// //   @override
// //   void initState() {
// //     super.initState();
// //     setCustomIcons();
// //     rootBundle.loadString('assets/map/mapstyle.txt').then((string) {
// //       _mapStyle = string;
// //     });
// //   }

// //   void updateMarkerAndCircle(LocationData newLocalData) {
// //     LatLng latlng = LatLng(newLocalData.latitude, newLocalData.longitude);
// //     this.setState(() {
// //       marker = Marker(
// //           markerId: MarkerId("User"),
// //           position: latlng,
// //           rotation: newLocalData.heading,
// //           draggable: false,
// //           zIndex: 10,
// //           flat: true,
// //           anchor: Offset(0.5, 0.5),
// //           icon: getIcon('user'));
// //       _markers.add(marker);
// //       circle = Circle(
// //         circleId: CircleId("Accuracy"),
// //         radius: newLocalData.accuracy,
// //         zIndex: 1,
// //         // strokeColor: primaryColor.withAlpha(80),
// //         strokeWidth: 1,
// //         center: latlng,
// //         // fillColor: primaryColor.withAlpha(40)
// //       );
// //     });
// //   }

// //   void getCurrentLocation() async {
// //     try {
// //       var location = await _locationTracker.getLocation();

// //       updateMarkerAndCircle(location);

// //       if (_locationSubscription != null) {
// //         _locationSubscription.cancel();
// //       }

// //       _locationSubscription = _locationTracker.onLocationChanged
// //           .listen((LocationData newLocalData) {
// //         updateMarkerAndCircle(newLocalData);
// //       });
// //     } on PlatformException catch (e) {
// //       if (e.code == 'PERMISSION_DENIED') {
// //         debugPrint("Permission Denied");
// //       }
// //     }
// //   }

// //   void _goToUserLocation() async {
// //     var location = await _locationTracker.getLocation();

// //     moveCamera(CameraPosition(
// //       target: LatLng(location.latitude, location.longitude),
// //       zoom: 17.2,
// //       tilt: 30.0,
// //       bearing: location.heading,
// //     ));
// //   }

// //   @override
// //   void dispose() {
// //     if (_locationSubscription != null) {
// //       _locationSubscription.cancel();
// //     }
// //     super.dispose();
// //   }

// //   void setCustomIcons() async {
// //     customIcons[0] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/general.png');

// //     customIcons[1] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/academic.png');

// //     customIcons[2] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/hostel.png');

// //     customIcons[3] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/cafe.png');

// //     customIcons[4] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/canteen.png');

// //     customIcons[5] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/grocery.png');

// //     customIcons[6] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/sports.png');

// //     customIcons[7] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/landscape.png');

// //     customIcons[8] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/medical.png');

// //     customIcons[9] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/mess.png');

// //     customIcons[10] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/parking.png');

// //     customIcons[11] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/housing.png');

// //     customIcons[12] = await BitmapDescriptor.fromAssetImage(
// //         ImageConfiguration(devicePixelRatio: 2.5), 'assets/map/user.png');
// //   }

// //   BitmapDescriptor getIcon(String category) {
// //     if (category == 'general') {
// //       return customIcons[0];
// //     } else if (category == 'academic') {
// //       return customIcons[1];
// //     } else if (category == 'hostel') {
// //       return customIcons[2];
// //     } else if (category == 'cafe') {
// //       return customIcons[3];
// //     } else if (category == 'canteen') {
// //       return customIcons[4];
// //     } else if (category == 'grocery') {
// //       return customIcons[5];
// //     } else if (category == 'sports') {
// //       return customIcons[6];
// //     } else if (category == 'landscape') {
// //       return customIcons[7];
// //     } else if (category == 'medical') {
// //       return customIcons[8];
// //     } else if (category == 'mess') {
// //       return customIcons[9];
// //     } else if (category == 'parking') {
// //       return customIcons[10];
// //     } else if (category == 'housing') {
// //       return customIcons[11];
// //     } else if (category == 'user') {
// //       return customIcons[12];
// //     } else {
// //       return customIcons[0];
// //     }
// //   }

// //   void _onMapCreated(GoogleMapController controller) {
// //     _controller.complete(controller);
// //     setState(() {
// //       _markerSet();
// //     });
// //     getCurrentLocation();
// //     controller.setMapStyle(_mapStyle);
// //   }

// //   MapType _currentMapType = MapType.hybrid;

// //   void _onMapTypeButtonPressed() {
// //     setState(() {
// //       _currentMapType =
// //           _currentMapType == MapType.normal ? MapType.hybrid : MapType.normal;
// //     });
// //   }

// //   _markerSet() async {
// //     dataContainer.map.sheet.getData('map!A:J').listen((data) {
// //       var mapData = data;
// //       mapInfoWindowList = [];
// //       locationList = [];
// //       keywordList = [];
// //       mapData.removeAt(0);
// //       mapData.forEach((location) {
// //         locationList.add(location[1]);
// //         keywordList.add(location[1] + location[8]);
// //         mapInfoWindowList.add(MapInfoWindow(
// //           locationName: location[1],
// //           location:
// //               LatLng(double.parse(location[3]), double.parse(location[4])),
// //           imagePath: location[9],
// //           timing: location[5],
// //           descriptionOne: location[6],
// //           descriptionTwo: location[7],
// //         ));
// //         _markers.add(Marker(
// //           markerId: MarkerId(location[1]),
// //           position:
// //               LatLng(double.parse(location[3]), double.parse(location[4])),
// //           infoWindow: InfoWindow(
// //             title: location[1],
// //             snippet: location[5],
// //           ),
// //           onTap: () {
// //             setState(() {
// //               currentWindow = mapInfoWindowList[int.parse(location[0])];
// //               mapInfoWindowPosition = -170;
// //             });
// //           },
// //           icon: getIcon(location[2]),
// //         ));
// //       });
// //       setState(() {});
// //     });
// //     return _markers;
// //   }

// //   moveCamera(CameraPosition position) async {
// //     final GoogleMapController controller = await _controller.future;
// //     controller.animateCamera(CameraUpdate.newCameraPosition(position));
// //   }

// //   void launchMap(double lat, double long) async {
// //     String url = "https://www.google.com/maps/search/?api=1&query=$lat,$long";
// //     if (await canLaunch(url)) {
// //       await launch(url);
// //     } else {
// //       throw 'Could not launch Maps';
// //     }
// //   }

// //   void navigateTo() {
// //     Navigator.pushNamed(context, '/tlcontacts');
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: <Widget>[
// //           GoogleMap(
// //             mapType: _currentMapType,
// //             padding: EdgeInsets.only(top: 75.0),
// //             zoomControlsEnabled: false,
// //             mapToolbarEnabled: false,
// //             compassEnabled: true,
// //             myLocationEnabled: false,
// //             tiltGesturesEnabled: false,
// //             scrollGesturesEnabled: true,
// //             rotateGesturesEnabled: true,
// //             myLocationButtonEnabled: true,
// //             onMapCreated: _onMapCreated,
// //             gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
// //               new Factory<OneSequenceGestureRecognizer>(
// //                 () => new EagerGestureRecognizer(),
// //               ),
// //             ].toSet(),
// //             initialCameraPosition: CameraPosition(
// //               target: _center,
// //               zoom: 17.2,
// //               tilt: 30.0,
// //               bearing: 180.0,
// //             ),
// //             cameraTargetBounds: CameraTargetBounds(
// //               new LatLngBounds(
// //                 northeast: LatLng(23.221005, 72.701542),
// //                 southwest: LatLng(23.201905, 72.678445),
// //               ),
// //             ),
// //             minMaxZoomPreference: MinMaxZoomPreference(12, 20),
// //             markers: _markers,
// //             circles: Set.of((circle != null) ? [circle] : []),
// //             onTap: (LatLng location) {
// //               setState(() {
// //                 mapInfoWindowPosition = -370;
// //               });
// //             },
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Align(
// //               alignment: Alignment.bottomRight,
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: <Widget>[
// //                   FloatingActionButton(
// //                     onPressed: () {
// //                       showSearch(
// //                         context: context,
// //                         delegate: CustomSearch(),
// //                       ).then((value) => setState(() {
// //                             currentWindow = mapInfoWindowList[int.parse(value)];
// //                             mapInfoWindowPosition = -170;
// //                             moveCamera(CameraPosition(
// //                               target: currentWindow.location,
// //                               zoom: 17.2,
// //                               tilt: 30.0,
// //                               bearing: 180.0,
// //                             ));
// //                           }));
// //                     },
// //                     heroTag: "btn1",
// //                     // backgroundColor: primaryColor,
// //                     tooltip: 'Search',
// //                     child: Icon(Icons.search, color: Colors.white),
// //                   ),
// //                   SizedBox(height: 16.0),
// //                   FloatingActionButton(
// //                     onPressed: _onMapTypeButtonPressed,
// //                     heroTag: "btn2",
// //                     backgroundColor: Colors.white,
// //                     tooltip: 'Layers',
// //                     child: Icon(Icons.layers, color: Colors.black45),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           AnimatedPositioned(
// //             bottom: mapInfoWindowPosition,
// //             left: 0,
// //             right: 0,
// //             duration: Duration(milliseconds: 200),
// //             child: Align(
// //               alignment: Alignment.bottomCenter,
// //               child: GestureDetector(
// //                 onTap: () {
// //                   setState(() {
// //                     mapInfoWindowPosition = 0;
// //                   });
// //                 },
// //                 onVerticalDragDown: (details) {
// //                   setState(() {
// //                     mapInfoWindowPosition = 0;
// //                   });
// //                 },
// //                 onDoubleTap: () {
// //                   setState(() {
// //                     mapInfoWindowPosition = -170;
// //                   });
// //                 },
// //                 child: Container(
// //                   margin: EdgeInsets.all(15),
// //                   height: 350,
// //                   decoration: BoxDecoration(
// //                       color: Colors.white,
// //                       borderRadius: BorderRadius.all(Radius.circular(10)),
// //                       boxShadow: <BoxShadow>[
// //                         BoxShadow(
// //                             blurRadius: 15,
// //                             offset: Offset.zero,
// //                             color: Colors.black.withOpacity(0.4))
// //                       ]),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     mainAxisAlignment: MainAxisAlignment.start,
// //                     children: <Widget>[
// //                       Container(
// //                         height: 100,
// //                         child: ClipRRect(
// //                           borderRadius: BorderRadius.only(
// //                               topLeft: Radius.circular(10),
// //                               topRight: Radius.circular(10)),
// //                           child: CachedNetworkImage(
// //                             imageUrl: currentWindow.imagePath,
// //                             fadeInDuration: Duration(milliseconds: 300),
// //                             height: 100,
// //                             width: 1040,
// //                             fit: BoxFit.cover,
// //                           ),
// //                         ),
// //                       ),
// //                       Container(
// //                         height: 100,
// //                         margin: EdgeInsets.only(top: 0),
// //                         child: Row(
// //                           crossAxisAlignment: CrossAxisAlignment.center,
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: <Widget>[
// //                             Expanded(
// //                               child: Container(
// //                                 margin: EdgeInsets.only(left: 20),
// //                                 child: Column(
// //                                   mainAxisAlignment: MainAxisAlignment.center,
// //                                   children: <Widget>[
// //                                     Text(
// //                                       currentWindow.locationName,
// //                                       style: TextStyle(
// //                                         color: Colors.black87,
// //                                         fontSize: 25,
// //                                       ),
// //                                     ),
// //                                     Text(
// //                                       currentWindow.timing,
// //                                       style: TextStyle(
// //                                         color: Colors.black,
// //                                         fontSize: 15,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                             Padding(
// //                               padding: EdgeInsets.all(22),
// //                               child: CircleAvatar(
// //                                 radius: 33,
// //                                 // backgroundColor: primaryColor,
// //                                 foregroundColor: Colors.white,
// //                                 child: IconButton(
// //                                   onPressed: () {
// //                                     launchMap(currentWindow.location.latitude,
// //                                         currentWindow.location.longitude);
// //                                   },
// //                                   tooltip: 'Directions',
// //                                   icon: Icon(Icons.directions),
// //                                 ),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       Container(
// //                         height: 150,
// //                         child: ListView(
// //                           padding: EdgeInsets.zero,
// //                           children: <Widget>[
// //                             SizedBox(height: 10),
// //                             Row(
// //                               crossAxisAlignment: CrossAxisAlignment.center,
// //                               mainAxisAlignment: MainAxisAlignment.center,
// //                               children: <Widget>[
// //                                 Expanded(
// //                                   child: Container(
// //                                     margin:
// //                                         EdgeInsets.only(left: 20, right: 20),
// //                                     child: Column(
// //                                       mainAxisAlignment:
// //                                           MainAxisAlignment.center,
// //                                       children: <Widget>[
// //                                         Text(
// //                                           currentWindow.descriptionOne,
// //                                           style: TextStyle(
// //                                             color: Colors.black87,
// //                                             fontSize: 15,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                             Divider(
// //                               height: 40.0,
// //                               thickness: 0.9,
// //                               indent: 20,
// //                               endIndent: 20,
// //                             ),
// //                             Row(
// //                               crossAxisAlignment: CrossAxisAlignment.center,
// //                               mainAxisAlignment: MainAxisAlignment.center,
// //                               children: <Widget>[
// //                                 Expanded(
// //                                   child: Container(
// //                                     margin:
// //                                         EdgeInsets.only(left: 20, right: 20),
// //                                     child: Column(
// //                                       mainAxisAlignment:
// //                                           MainAxisAlignment.center,
// //                                       children: <Widget>[
// //                                         Text(
// //                                           currentWindow.descriptionTwo,
// //                                           style: TextStyle(
// //                                             color: Colors.black87,
// //                                             fontSize: 15,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                             SizedBox(height: 20),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.only(right: 16.0, top: 75.0),
// //             child: Align(
// //               alignment: Alignment.topRight,
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: <Widget>[
// //                   FloatingActionButton(
// //                     onPressed: _goToUserLocation,
// //                     heroTag: "btn3",
// //                     backgroundColor: Colors.white,
// //                     tooltip: 'Your location',
// //                     child: Icon(Icons.my_location, color: Colors.black45),
// //                   ),
// //                   SizedBox(height: 16),
// //                   FloatingActionButton(
// //                     onPressed: () {
// //                       moveCamera(CameraPosition(
// //                         target: _center,
// //                         zoom: 17.2,
// //                         tilt: 30.0,
// //                         bearing: 180.0,
// //                       ));
// //                     },
// //                     heroTag: "btn4",
// //                     backgroundColor: Colors.white,
// //                     tooltip: 'IITGN',
// //                     child: Icon(Icons.home, color: Colors.black45),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   // TODO: implement wantKeepAlive
// //   bool get wantKeepAlive => true;
// // }

// // class CustomSearch extends SearchDelegate<String> {
// //   // @override
// //   // ThemeData appBarTheme(BuildContext context) {
// //   //   assert(context != null);
// //   //   final ThemeData theme = Theme.of(context);
// //   //   assert(theme != null);
// //   //   return theme.copyWith(
// //   //     inputDecorationTheme: InputDecorationTheme(
// //   //           hintStyle: TextStyle(color: theme.primaryTextTheme.headline6.color.withOpacity(0.6))),
// //   //       primaryColor: theme.primaryColor,
// //   //       primaryIconTheme: theme.primaryIconTheme,
// //   //       primaryColorBrightness: theme.primaryColorBrightness,
// //   //       primaryTextTheme: theme.primaryTextTheme,
// //   //       textTheme: theme.textTheme.copyWith(
// //   //           headline6: theme.textTheme.headline6
// //   //               .copyWith(color: theme.primaryTextTheme.headline6.color))
// //   //   );
// //   // }

// //   @override
// //   List<Widget> buildActions(BuildContext context) {
// //     return [
// //       IconButton(
// //         icon: Icon(Icons.clear),
// //         onPressed: () {
// //           query = '';
// //         },
// //       ),
// //     ];
// //   }

// //   @override
// //   Widget buildLeading(BuildContext context) {
// //     return IconButton(
// //       icon: AnimatedIcon(
// //         icon: AnimatedIcons.menu_arrow,
// //         progress: transitionAnimation,
// //       ),
// //       onPressed: () {
// //         close(context, null);
// //       },
// //     );
// //   }

// //   @override
// //   Widget buildResults(BuildContext context) {
// //     //DONT REMOVE
// //   }

// //   @override
// //   Widget buildSuggestions(BuildContext context) {
// //     if (query.isEmpty) {
// //       return SingleChildScrollView(
// //         child: Container(
// //           margin: EdgeInsets.all(15),
// //           height: 425,
// //           decoration: BoxDecoration(
// //             color: Colors.white10,
// //           ),
// //           child: Padding(
// //             padding: const EdgeInsets.only(top: 10.0),
// //             child: Column(
// //               children: <Widget>[
// //                 Image(
// //                   image: AssetImage('assets/images/map_search.png'),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(17.0),
// //                   child: Text(
// //                     "This location search is powered by a comprehensive list of keywords. For example, if you search 'food', the dining hall and canteens will come up as suggestions.",
// //                     style: TextStyle(
// //                       color: Colors.black38,
// //                       fontSize: 18,
// //                     ),
// //                     textAlign: TextAlign.center,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       );
// //     } else {
// //       final suggestions = locationList
// //           .where((p) => keywordList[locationList.indexOf(p)]
// //               .toLowerCase()
// //               .contains(query.toLowerCase()))
// //           .toList();
// //       return ListView.builder(
// //         itemBuilder: (context, index) => ListTile(
// //           onTap: () {
// //             close(context, locationList.indexOf(suggestions[index]).toString());
// //           },
// //           leading: Icon(Icons.location_city),
// //           title: Text(suggestions[index]),
// //         ),
// //         itemCount: suggestions.length,
// //       );
// //     }
// //   }
// // }

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MainExample extends StatefulWidget {
  MainExample({Key? key}) : super(key: key);

  @override
  _MainExampleState createState() => _MainExampleState();
}

class _MainExampleState extends State<MainExample> with OSMMixinObserver {
  late MapController controller;
  late GlobalKey<ScaffoldState> scaffoldKey;
  Key mapGlobalkey = UniqueKey();
  ValueNotifier<bool> zoomNotifierActivation = ValueNotifier(false);
  ValueNotifier<bool> visibilityZoomNotifierActivation = ValueNotifier(false);
  ValueNotifier<bool> advPickerNotifierActivation = ValueNotifier(false);
  ValueNotifier<bool> visibilityOSMLayers = ValueNotifier(false);
  ValueNotifier<double> positionOSMLayers = ValueNotifier(-200);
  ValueNotifier<GeoPoint?> centerMap = ValueNotifier(null);
  ValueNotifier<bool> trackingNotifier = ValueNotifier(false);
  ValueNotifier<bool> showFab = ValueNotifier(true);
  ValueNotifier<GeoPoint?> lastGeoPoint = ValueNotifier(null);
  Timer? timer;
  int x = 0;

  @override
  void initState() {
    super.initState();
    controller = MapController.withPosition(
      initPosition: GeoPoint(
        latitude: 23.211209,
        longitude: 72.685387,
      ),
    );

    controller.addObserver(this);
    scaffoldKey = GlobalKey<ScaffoldState>();
    controller.listenerMapLongTapping.addListener(() async {
      if (controller.listenerMapLongTapping.value != null) {
        print(controller.listenerMapLongTapping.value);
        final randNum = Random.secure().nextInt(100).toString();
        print(randNum);
        await controller.addMarker(
          controller.listenerMapLongTapping.value!,
          markerIcon: MarkerIcon(
            iconWidget: SizedBox.fromSize(
              size: Size.square(48),
              child: Stack(
                children: [
                  Icon(
                    Icons.store,
                    color: Colors.brown,
                    size: 48,
                  ),
                  Text(
                    randNum,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          //angle: pi / 3,
        );
      }
    });

    controller.listenerMapSingleTapping.addListener(() async {
      if (controller.listenerMapSingleTapping.value != null) {
        print(controller.listenerMapSingleTapping.value);

        if (lastGeoPoint.value != null) {
          controller.changeLocationMarker(
            oldLocation: lastGeoPoint.value!,
            newLocation: controller.listenerMapSingleTapping.value!,
          );
        } else {
          await controller.addMarker(
            controller.listenerMapSingleTapping.value!,
            markerIcon: MarkerIcon(
              icon: Icon(
                Icons.location_pin,
                color: Colors.red,
                size: 40,
              ),
            ),
          );
        }
        lastGeoPoint.value = controller.listenerMapSingleTapping.value;
      }
    });
    controller.listenerRegionIsChanging.addListener(() async {
      if (controller.listenerRegionIsChanging.value != null) {
        print(controller.listenerRegionIsChanging.value);
        centerMap.value = controller.listenerRegionIsChanging.value!.center;
      }
    });

    //controller.listenerMapIsReady.addListener(mapIsInitialized);
  }

  Future<void> mapIsInitialized() async {
    await controller.setZoom(zoomLevel: 17);

    final bounds = await controller.bounds;
    print(bounds.toString());
    Future.delayed(Duration(seconds: 5), () {});
  }

  @override
  Future<void> mapIsReady(bool isReady) async {
    if (!isReady) {
      return;
    }
    await mapIsInitialized();
  }

  @override
  void dispose() {
    if (timer != null && timer!.isActive) {
      timer?.cancel();
    }
    //controller.listenerMapIsReady.removeListener(mapIsInitialized);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Stack(
            children: [
              OSMFlutter(
                controller: controller,
                trackMyPosition: false,
                androidHotReloadSupport: true,
                mapIsLoading: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Map is Loading"),
                    ],
                  ),
                ),
                onMapIsReady: (isReady) {
                  if (isReady) {
                    print("map is ready");
                  }
                },
                initZoom: 17,
                minZoomLevel: 10,
                maxZoomLevel: 19,
                stepZoom: 1.0,
                userLocationMarker: UserLocationMaker(
                  personMarker: MarkerIcon(
                    // icon: Icon(
                    //   Icons.car_crash_sharp,
                    //   color: Colors.red,
                    //   size: 48,
                    // ),
                    iconWidget: SizedBox.square(
                      dimension: 128,
                      // dimension: 64,
                      child: Image.asset(
                        "images/Asset 16(1).png",
                      ),
                    ),
                  ),
                  directionArrowMarker: MarkerIcon(
                    assetMarker: AssetMarker(
                        image: AssetImage(
                          // "images/Asset 16.png",
                          "images/transp.jpg",
                        ),
                        // scaleAssetImage: 0.4,
                        scaleAssetImage: 0.0,
                        ),
                  ),
                ),
                showContributorBadgeForOSM: true,
                //trackMyPosition: trackingNotifier.value,
                showDefaultInfoWindow: false,
                onLocationChanged: (myLocation) {
                  print(myLocation);
                },
                // onGeoPointClicked: (geoPoint) async {
                //   if (geoPoint ==
                //       GeoPoint(latitude: 23.211209, longitude: 72.685387)) {
                //     await controller.setMarkerIcon(
                //         geoPoint,
                //         MarkerIcon(
                //           icon: Icon(
                //             Icons.bus_alert,
                //             color: Colors.blue,
                //             size: 24,
                //           ),
                //         ));
                //   }
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("hello"),
                //       action: SnackBarAction(
                //         onPressed: () =>
                //             ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                //         label: "hide",
                //       ),
                //     ),
                //   );
                // },
             staticPoints: [
                  StaticPositionGeoPoint('Street Beat', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 128,
                    child: Image.asset(
                      "images/streetbeat.png",
                    ),
                  ),), [GeoPoint(latitude: 23.210654, longitude: 72.684397),
                    GeoPoint(latitude: 23.210654, longitude: 72.684397)]),
                  StaticPositionGeoPoint('BlithCube', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 200,
                    child: Image.asset(
                      "images/blith-cube-open.jpg",
                    ),
                  ),), [GeoPoint(latitude: 23.214729, longitude: 72.684703),
                    GeoPoint(latitude: 23.214729, longitude: 72.684703)]),
                  StaticPositionGeoPoint('Aerosol', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 128,
                    child: Image.asset(
                      "images/Aerosol Logomap.png",
                    ),
                  ),), [GeoPoint(latitude: 23.2100997, longitude: 72.6843632),
                    GeoPoint(latitude: 23.2100997, longitude: 72.6843632)]),
                  StaticPositionGeoPoint('Unkahi', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 200,
                    child: Image.asset(
                      "images/unkahi_logo transparent-01.png",
                    ),
                  ),), [GeoPoint(latitude: 23.210495, longitude: 72.684470),
                    GeoPoint(latitude: 23.210495, longitude: 72.684470)]),
                  StaticPositionGeoPoint('Euphony', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 100,
                    child: Image.asset(
                      "images/euphony_light.png",
                    ),
                  ),), [GeoPoint(latitude: 23.210523, longitude: 72.684401),
                    GeoPoint(latitude: 23.210523, longitude: 72.684401)]),
                  /*StaticPositionGeoPoint('Protalk Basketball', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 128,
                    child: Image.asset(
                      "images/Asset 16.png",
                    ),
                  ),), [GeoPoint(latitude: 23.211209, longitude: 72.685387),
                    GeoPoint(latitude: 23.211211, longitude: 72.685390)]),
*/
                  StaticPositionGeoPoint('String Theory', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 128,
                    child: Image.asset(
                      "images/string_logo_2-02.png",
                    ),
                  ),), [GeoPoint(latitude: 23.209953, longitude: 72.684392),
                    GeoPoint(latitude: 23.209953, longitude: 72.684392)]),
                  StaticPositionGeoPoint('ProNites', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 128,
                    child: Image.asset(
                      "images/Asset 16.png",
                    ),
                  ),), [GeoPoint(latitude: 23.210658, longitude: 72.684339),
                    GeoPoint(latitude: 23.210658, longitude: 6843392.7)]),
                  StaticPositionGeoPoint('Antaragnee', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 128,
                    child: Image.asset(
                      "images/Antaragnee.png",
                    ),
                  ),), [GeoPoint(latitude: 23.210681, longitude: 72.684518),
                    GeoPoint(latitude: 23.210681, longitude: 72.684518)]),
                  StaticPositionGeoPoint('Quizzitch', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 128,
                    child: Image.asset(
                      "images/Quizzitch-02map.png",
                    ),
                  ),), [GeoPoint(latitude: 23.214894, longitude: 72.685242),
                    GeoPoint(latitude: 23.214894, longitude: 72.685242)]),
                  StaticPositionGeoPoint('Synchronize', MarkerIcon(iconWidget: SizedBox.square(
                    dimension: 100,
                    child: Image.asset(
                      "images/Sync_Logo2-01.png",
                    ),
                  ),), [GeoPoint(latitude: 23.214810, longitude: 72.685752),
                    GeoPoint(latitude: 23.214810, longitude: 72.685752)]),


                ],
    
                roadConfiguration: RoadConfiguration(
                  startIcon: MarkerIcon(
                    icon: Icon(
                      Icons.person,
                      size: 24,
                      color: Colors.brown,
                    ),
                  ),
                  middleIcon: MarkerIcon(
                    icon: Icon(Icons.location_history_sharp),
                  ),
                  roadColor: Colors.red,
                ),
                markerOption: MarkerOption(
                  defaultMarker: MarkerIcon(
                    icon: Icon(
                      Icons.home,
                      color: Colors.orange,
                      size: 24,
                    ),
                  ),
                  advancedPickerMarker: MarkerIcon(
                    icon: Icon(
                      Icons.location_searching,
                      color: Colors.green,
                      size: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: ValueListenableBuilder<bool>(
                  valueListenable: advPickerNotifierActivation,
                  builder: (ctx, visible, child) {
                    return Visibility(
                      visible: visible,
                      child: AnimatedOpacity(
                        opacity: visible ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: child,
                      ),
                    );
                  },
                  child: FloatingActionButton(
                    key: UniqueKey(),
                    child: Icon(Icons.arrow_forward),
                    heroTag: "confirmAdvPicker",
                    onPressed: () async {
                      advPickerNotifierActivation.value = false;
                      GeoPoint p =
                          await controller.selectAdvancedPositionPicker();
                      print(p);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: ValueListenableBuilder<bool>(
          valueListenable: showFab,
          builder: (ctx, isShow, child) {
            if (!isShow) {
              return SizedBox.shrink();
            }
            return child!;
          },
          child: FloatingActionButton(
            onPressed: () async {
              if (!trackingNotifier.value) {
                await controller.currentLocation();
                await controller.enableTracking();
                //await controller.zoom(5.0);
              } else {
                await controller.disabledTracking();
              }
              trackingNotifier.value = !trackingNotifier.value;
            },
            child: ValueListenableBuilder<bool>(
              valueListenable: trackingNotifier,
              builder: (ctx, isTracking, _) {
                if (isTracking) {
                  return Icon(Icons.gps_off_sharp);
                }
                return Icon(Icons.my_location);
              },
            ),
          ),
        ),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.startFloat, //location tracker
      ),
    );
  }

  @override
  Future<void> mapRestored() async {
    super.mapRestored();
    print("log map restored");
  }
}
