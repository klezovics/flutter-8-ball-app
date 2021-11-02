import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me anything'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
        onPressed: () {
          print('Ball number: $ballNumber');
          setState(() {
            setRandomBallNumber();
          });
        },
      ),
    );
  }

  void setRandomBallNumber() {
    ballNumber = Random().nextInt(4) + 1;
  }
}
