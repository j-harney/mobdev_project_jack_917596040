import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/appBarCreator_widget.dart';
import 'package:project1_mobdev_jack_917596040/CreatorsForScreens/drawercreator_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearMeScreen extends StatefulWidget {
  const NearMeScreen({super.key});

  @override
  State<NearMeScreen> createState() => _NearMeScreenState();
}

class _NearMeScreenState extends State<NearMeScreen> {
  late GoogleMapController mapController;

  LatLng? _center;
  Position? _currentPosition;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  _getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission = LocationPermission.denied;
// Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }
// Request permission to get the user's location
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return;
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return;
      }
    }
// Get the current location of the user
    _currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      _center = LatLng(_currentPosition!.latitude, _currentPosition!.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    DrawerCreator drawerCreator = DrawerCreator();
    AppBarCreator appBarCreator = AppBarCreator();

    CameraPosition cameraPos;

    return Scaffold(
      drawer: drawerCreator.createDrawer(context, 'Near Me'),
      appBar: appBarCreator.createAppBar(context, 'Near Me'),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: ElevatedButton(
                            onPressed: () {
                              _getUserLocation();
                              cameraPos =
                                  CameraPosition(target: _center!, zoom: 16);
                              mapController.animateCamera(
                                  CameraUpdate.newCameraPosition(cameraPos));
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                    width: 1, color: Colors.black),
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero))),
                            child: const Text('Find me',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)))))),
            Expanded(
                flex: 3,
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: _center == null
                            ? const Center(child: CircularProgressIndicator())
                            : SizedBox(
                                height: double.infinity,
                                child: GoogleMap(
                                    onMapCreated: _onMapCreated,
                                    initialCameraPosition: cameraPos =
                                        CameraPosition(
                                      target: _center!,
                                      zoom: 15.0,
                                    ),
                                    myLocationEnabled: true)))))
          ]),
    );
  }
}
