import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentlocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      //TODO: Create second widget for non gps conection
      //tratamento de erros
      /*
      * linha destacada dentro de um comentário - extensão better comments



      */
      print(e);
    }
  }
}
