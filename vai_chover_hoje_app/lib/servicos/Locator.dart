import 'package:geolocator/geolocator.dart';

class GetLocation {
  double latitude;
  double longitude;

  void getlocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);
      print(position);
    } catch (e) {
      print(e);
    }
  }
}
