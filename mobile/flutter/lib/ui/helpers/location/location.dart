import 'dart:async';

import 'package:geolocator/geolocator.dart';
import '../../../../presentation/presentation.dart';

class LocationCoordinate extends LocationRule {
  Future<bool> getPermission() async {
    LocationPermission _permissionGranted = await Geolocator.checkPermission();
    if (_permissionGranted == LocationPermission.denied) {
      _permissionGranted = await Geolocator.requestPermission();
      if (_permissionGranted != LocationPermission.whileInUse) {
        return false;
      } else {
        return true;
      }
    } else {
      return true;
    }
  }

  Future<bool> getService() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  Future<Position?> get() async {
    bool permission = await getPermission();
    bool service = await getService();

    if (!permission || !service) {
      return null;
    }

    Position _locationData = await Geolocator.getCurrentPosition();
    return _locationData;
  }
}
