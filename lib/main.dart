import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 - Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: MagicEight(),
      ),
    ),
  );
}

class MagicEight extends StatefulWidget {
  @override
  _MagicEightState createState() => _MagicEightState();
}

class _MagicEightState extends State<MagicEight> {
  int magicNumber = 1;

  void randomize() {
    setState(() {
      magicNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: FlatButton(
            onPressed: () {
              randomize();
            },
            child: Image.asset('images/ball$magicNumber.png'),
          ),
        ),
      ),
    );
  }
}
