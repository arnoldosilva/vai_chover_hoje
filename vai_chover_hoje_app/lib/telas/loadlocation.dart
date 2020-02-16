import 'package:flutter/material.dart';
import 'package:vai_chover_hoje_app/servicos/Locator.dart';

class LoadLocation extends StatefulWidget {
  @override
  _LoadLocationState createState() => _LoadLocationState();
}

class _LoadLocationState extends State<LoadLocation> {
  GetLocation location = GetLocation();
  
  @override
  void initState() {
    super.initState();
    location.getlocation();   
    print('init state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
