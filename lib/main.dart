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
          child: Container(
              margin: EdgeInsets.only(top: 150.0), child: _foodieContainer()),
        ),
      ),
    );
  }

  Widget _foodieContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[_foodieColumn()],
    );
  }

  Widget _foodieColumn() {
    return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset('images/rosco.png'),
            SizedBox(height: 20),
            Text(
              'Foodie',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
            Text('one-click food',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400)),
          ]),
          Expanded(child: _orderButtonColumn())
        ]);
  }

  Widget _orderButtonColumn() {
    return Container(
      margin: EdgeInsets.only(bottom: 80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          RaisedButton(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              onPressed: () {},
              child: Text('Start Ordering'),
              color: Colors.white,
              textColor: Colors.black45,
              padding: const EdgeInsets.only(
                  left: 32.0, right: 32.0, top: 16.0, bottom: 16.0)),
        ],
      ),
    );
  }
}
