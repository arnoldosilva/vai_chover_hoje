import 'package:flutter/material.dart';
import 'package:vai_chover_hoje_app/servicos/Locator.dart';
import 'package:vai_chover_hoje_app/servicos/network.dart';

class LoadLocation extends StatefulWidget {
  @override
  _LoadLocationState createState() => _LoadLocationState();
}

class _LoadLocationState extends State<LoadLocation> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentlocation();

    WeatherData weatherData = WeatherData();

    var data =
        await weatherData.getWeatherData(location.latitude, location.longitude);
    if (data != null) {
      print(data);
    }
  }

  void getData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Teste!'),
      ),
    );
  }
}
