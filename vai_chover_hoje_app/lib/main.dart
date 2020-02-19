import 'package:flutter/material.dart';
import 'package:vai_chover_hoje_app/telas/loadlocation.dart';
import 'package:vai_chover_hoje_app/servicos/contantes.dart';

main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadLocation(),
      theme: ThemeData.dark()
    ),
  );
}
