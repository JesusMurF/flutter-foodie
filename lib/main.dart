import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(new MyApp());
}

// Aplicacion basica
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
          child: Text('Hello world',
              style: TextStyle(color: Colors.white, fontSize: 55.0)),
        ));
  }
}
