import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Center(child: Text('Magic 8 Ball')),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  static const _defaultBallNumber = 1;

  int ballNumber = _defaultBallNumber;

  int getRandomBallNumber() {
    return Random().nextInt(5) + _defaultBallNumber;
  }

  void rollTheBallNumber() {
    setState(() {
      ballNumber = getRandomBallNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          rollTheBallNumber();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
