import 'package:flutter/material.dart';
import 'package:vai_chover_hoje_app/servicos/Locator.dart';

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

  void getLocation()async {
      Location location = Location();
      await location.getCurrentlocation();   
      print(location.latitude);
      print(location.longitude);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
