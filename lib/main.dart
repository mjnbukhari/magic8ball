import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _State();
}

class _State extends State<MagicBall> {
  int ballChange = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  ballChange = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballChange.png')),
        ],
      ),
    );
  }
}
