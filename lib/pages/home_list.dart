import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home List'),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Volver", style: TextStyle(color: Colors.black)),
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
