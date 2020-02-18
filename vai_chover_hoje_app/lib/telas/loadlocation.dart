import 'package:flutter/material.dart';
import 'package:vai_chover_hoje_app/servicos/Locator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadLocation extends StatefulWidget {
  @override
  _LoadLocationState createState() => _LoadLocationState();
}

class _LoadLocationState extends State<LoadLocation> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentlocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    String url =
        'https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22';
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      var temperature = decodedData['main']['temp'];
      var condition = decodedData['weather'][0]['id'];
      String location = decodedData['name'];

      print(temperature);
      print(condition);
      print(location);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
