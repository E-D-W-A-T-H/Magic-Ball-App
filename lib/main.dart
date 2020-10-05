import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue ,
        appBar: AppBar(
          centerTitle: true,
          title: Center(child: Text('Ask me anythig'),),       
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int a = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
            onPressed: () {
              setState(
                () {
                  a = Random().nextInt(5) + 1;
                },
              );
            },
            child: Image.asset('images/ball$a.png')),
      ),
    );
  }
}
