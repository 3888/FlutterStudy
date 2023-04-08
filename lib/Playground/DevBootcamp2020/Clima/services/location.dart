import 'package:fimber/fimber.dart';
import 'package:geolocator/geolocator.dart';

var logger = FimberLog("TAG_LOCATION");

class Location {
  late double latitude;
  late double longitude;

  Future<void> _checkLocationPermission() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location Not Available');
      }
    }
  }

  Future<Position?> determinePosition() async {
    _checkLocationPermission();
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
  }

  Future<void> getCurrentLocation() async {
    _checkLocationPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      logger.e(e.toString());
    }
  }
}
