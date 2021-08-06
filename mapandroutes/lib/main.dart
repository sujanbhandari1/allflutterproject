import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //creating set of type Polyline
  Set<Polyline> lines = {};

  @override
  void initState() {
    super.initState();
    lines.add(
      Polyline(
        points: [
          LatLng(27.708019487671255, 85.32178229283588),
          LatLng(27.709695403757674, 85.32208175083976),
          LatLng(27.709922644645484, 85.32007110438943),
          LatLng(27.709922644645484, 85.31835991584413),
          LatLng(27.7099510497214, 85.31733320271695),
          LatLng(27.713203382046295, 85.31783051689243),
          LatLng(27.713676784789513, 85.31540544196125),
        ],
        endCap: Cap.squareCap,
        geodesic: false,
        polylineId: PolylineId("line_one"),
      ),
    );
    lines.add(
      Polyline(
        points: [LatLng(12.949798, 77.470534), LatLng(12.938614, 77.469379)],
        color: Colors.blue,
        polylineId: PolylineId("line_one"),
      ),
    );
  }

  //creating const for the camera position.
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(27.712590083179638, 85.32269616430646),
    zoom: 14.5,
  );

  late GoogleMapController _googleMapController;
  List<Marker> myMarker = [
    Marker(
      markerId: MarkerId('marker'),
      position: LatLng(27.708019487671255, 85.32178229283588),
    ),
    Marker(
      markerId: MarkerId('marker'),
      position: LatLng(27.713676784789513, 85.31540544196125),
    ),
  ];
  final Set<Polyline> polyline = {};

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: FloatingActionButton(
          elevation: 0,
          onPressed: () {
            _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(_initialCameraPosition),
            );
          },
          backgroundColor: Colors.transparent,
          child: Icon(
            Icons.location_pin,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Google Map',
          style: TextStyle(color: Colors.black),
        ),
      ),

      //body starts from here with Google map in it.
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        polylines: lines,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,
        markers: Set.from(myMarker),
        // onTap: _handleTap,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition),
          );
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.center_focus_strong,
          color: Colors.black,
        ),
      ),
    ));
  }
}
