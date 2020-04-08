import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  final Color _appBarColorText = Color.fromRGBO(200, 44, 100, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(Icons.menu, color: _appBarColorText, size: 20.0),
                onPressed: () {},
              ),
              title: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 12.0),
                    child: Text(
                      'Deliver to:',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0),
                    ),
                  ),
                  Text(
                    'Hobskin Road, CA',
                    style: TextStyle(
                        color: _appBarColorText,
                        fontSize: 16.0,
                        letterSpacing: -1),
                  )
                ],
              )),
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
