import 'dart:async';
import 'package:component_set1/component/InputComponent.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../../util/GooglePlaceUtil.dart';
import 'view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:google_maps_webservice/places.dart' as place;

class Presenter extends StatefulWidget {
  final String apiGoogleMap;
  final ValueChanged<place.Prediction> onSave;
  final String saveText;
  final String backText;
  final String title;
  final VoidCallback onBack;
  final BoxDecoration decoration;
  final Color background;
  final Color borderInput;
  final Color bottonColor;

  const Presenter({
    Key key,
    @required this.apiGoogleMap,
    @required this.onSave,
    @required this.saveText,
    this.backText,
    this.title,
    this.onBack,
    this.decoration,
    this.background = Colors.grey,
    this.borderInput = Colors.grey,
     this.bottonColor = Colors.green,
  }) : super(key: key);

  @override
  View createState() => View();
}

abstract class PresenterState extends State<Presenter> {
  GooglePlaceUtil googlePlaceUtil;
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  TextEditingController searchController = new TextEditingController();
  StateInput searchState;
  final FocusNode searchFocus = FocusNode();
  LatLng currenPosition;
  GoogleMapController googleMapController;

  Completer<GoogleMapController> mcontroller = Completer();

  bool loadData = false;
  Location locationService = new Location();
  bool permission = false;
  String error;

  initPlatformState() async {
    await locationService.changeSettings(
        accuracy: LocationAccuracy.HIGH, interval: 1000);

    LocationData location;
    try {
      bool serviceStatus = await locationService.serviceEnabled();
      if (serviceStatus) {
        permission = await locationService.requestPermission();
        if (permission) {
          location = await locationService.getLocation();
        }
      } else {
        bool serviceStatusResult = await locationService.requestService();
        if (serviceStatusResult) {
          initPlatformState();
        }
      }
    } on PlatformException catch (e) {
      print(e);
      if (e.code == 'PERMISSION_DENIED') {
        error = e.message;
      } else if (e.code == 'SERVICE_STATUS_ERROR') {
        error = e.message;
      }
      location = null;
    }

    setState(() {
      loadData = true;
      currenPosition = LatLng(location.latitude, location.longitude);
    });
  }

  @override
  void initState() {
    super.initState();
    googlePlaceUtil = new GooglePlaceUtil(widget.apiGoogleMap);
    initPlatformState();
  }

  void searchLocation(BuildContext context) {
    googlePlaceUtil.openPrediction(context).then((onValue) {
      googlePlaceUtil.prediction = onValue;
      searchController.text = onValue.description;
      googleMapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          // bearing: 270.0,
          target: googlePlaceUtil.latLng,
          // tilt: 30.0,
          zoom: 17.0,
        ),
      ));
      selectLocation(googlePlaceUtil.latLng);
    });
  }

  void selectLocation(LatLng latLng) {
    final int markerCount = markers.length;

    if (markerCount == 12) {
      return;
    }

    final String markerIdVal = 'selected';

    final MarkerId markerId = MarkerId(markerIdVal);

    final Marker marker = Marker(
      markerId: markerId,
      position: latLng,
      infoWindow: InfoWindow(title: "", snippet: ''),
      onTap: () {
        //_onMarkerTapped(markerId);
      },
    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  void getAddress(LatLng latLng) {
    GooglePlaceUtil.initGeolocator()
        .placemarkFromCoordinates(latLng.latitude, latLng.longitude)
        .then((onValue) {
      setState(() {
        searchController.text = GooglePlaceUtil.changeToAddress(onValue.first);
      });
    });
  }

  void myLocation() {
    initPlatformState();
    googleMapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        // bearing: 360.0,
        target: currenPosition,
        // tilt: 30.0,
        zoom: 17.0,
      ),
    ));
  }
}
