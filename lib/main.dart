import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Ball(),
    backgroundColor: Colors.deepPurpleAccent,
    appBar: AppBar(
    backgroundColor: Colors.grey,
    title: Text('Ask me anything'),
    ),
);
  }
}

class Ball extends StatefulWidget {

  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print(ballNumber);
          });
        },
        child: Container(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

