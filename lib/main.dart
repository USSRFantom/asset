import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'DancingScript'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adding Assets'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/backgroud.jpeg'),
              ),
              Image.asset('assets/icons/icon.png'),
              Positioned(
                top: 120,
                left: 125,
                child: Text(
                  "My custom font",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    //fontFamily: 'indieFlower',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
