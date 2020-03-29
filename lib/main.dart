import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Home.png"), fit: BoxFit.cover),
          ),
          child: Center(child: Image.asset('images/rosco.png')),
        ),
      ),
    );
  }
}
