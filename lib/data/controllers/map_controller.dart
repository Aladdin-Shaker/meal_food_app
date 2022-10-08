import 'package:flutter/material.dart';
import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

class MapController extends ChangeNotifier {
  Completer<GoogleMapController> googleMapController = Completer();

  final Set<Marker> markers = {};
  MapType defaultMapType = MapType.normal;
  bool isTrafficEnebled = false;
  Position? currentPosition;
  final double _zoom = 40;
  // final Location _location = Location();

  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.06803110196948, 37.364201210439205),
    zoom: 40,
  );

  void onMapCreated(GoogleMapController controller) {
    googleMapController.complete(controller);

    getCurrentPosition();
    notifyListeners();
  }

  // change the map view type
  void changeMapType() {
    defaultMapType =
        defaultMapType == MapType.normal ? MapType.satellite : MapType.normal;
    notifyListeners();
  }

  // toggle the trafiic lines
  void toggleTrafficShow() {
    isTrafficEnebled = !isTrafficEnebled;
    notifyListeners();
  }

  // get the selected location lan/lon
  Future<void> goToSelectedLocation(double latitude, double longitude) async {
    GoogleMapController controller = await googleMapController.future;

    controller.animateCamera(
      CameraUpdate.newLatLngZoom(
        LatLng(latitude, longitude),
        _zoom,
      ),
    );

    addLocatinnMark(latitude: latitude, longitude: longitude);

    notifyListeners();
  }

  void addLocatinnMark({
    String markName = "test",
    required double latitude,
    required double longitude,
  }) {
    markers.add(
      Marker(
        markerId: MarkerId(markName),
        position: LatLng(latitude, longitude),
        // infoWindow: InfoWindow(
        //   title: 'New York',
        //   snippet: 'Welcome to New York',
        // ),
      ),
    );
    notifyListeners();
  }

  // get current location
  Future<void> getCurrentPosition() async {
    final hasPermission = await _handlePermission();

    if (!hasPermission) {
      return;
    }

    currentPosition = await _geolocatorPlatform.getCurrentPosition();
    goToSelectedLocation(currentPosition!.latitude, currentPosition!.longitude);
    notifyListeners();
  }

  // handle location permission
  Future<bool> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        // _updatePositionList(
        //   PositionItemType.log,
        //   _kPermissionDeniedMessage,
        // );

        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      // _updatePositionList(
      //   PositionItemType.log,
      //   _kPermissionDeniedForeverMessage,
      // );

      return false;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    // _updatePositionList(
    //   PositionItemType.log,
    //   _kPermissionGrantedMessage,
    // );
    return true;
  }
}
