import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/home_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Home.png"), fit: BoxFit.cover),
        ),
        child: Container(
            margin: EdgeInsets.only(top: 150.0),
            child: Stack(children: [
              _foodieContainer(context),
              new Positioned(
                  child: Image.asset("images/plato_verduras.png"), top: 200.0),
              new Positioned(
                child: Image.asset("images/plato_manzana.png"),
                right: 0,
                bottom: 180.0,
              ),
            ])),
      ),
    );
  }

  Widget _foodieContainer(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[_foodieColumn(context)],
    );
  }

  Widget _foodieColumn(context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset('images/rosco.png'),
        SizedBox(height: 20),
        Text(
          'Foodie',
          style: TextStyle(
              fontFamily: 'Quicksand',
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold),
        ),
        Text('one-click food',
            style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400)),
      ]),
      Expanded(child: _orderButtonColumn(context))
    ]);
  }

  Widget _orderButtonColumn(context) {
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeList()),
                );
              },
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
