import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Magic8Ball(),
  ));
}

class _Magic8Ball extends StatefulWidget {
  @override
  __Magic8BallState createState() => __Magic8BallState();
}

class __Magic8BallState extends State<_Magic8Ball> {
  int _magic8BallNumber=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Megic 8 Ball',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                    'Ask Me Anything',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: FlatButton(
                  child: Image.asset('images/ball$_magic8BallNumber.png'),
                  onPressed: (){
                    setState(() {
                      _magic8BallNumber=_randomNumber();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _randomNumber() {
    var _randomNumberGenerator = new Random().nextInt(5)+1;
    return _randomNumberGenerator;
  }
}

