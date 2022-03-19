import 'package:geolocator/geolocator.dart';

abstract class LocationRule {
  Future<bool> getPermission();
  Future<bool> getService();
  Future<Position?> get();
}