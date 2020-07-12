import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            "My First Decision App",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
        body: ManishSingh(),
      ),
    ),
  );
}

class ManishSingh extends StatefulWidget {
  @override
  _ManishSinghState createState() => _ManishSinghState();
}

class _ManishSinghState extends State<ManishSingh> {
  int ballCount = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballCount = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballCount.png'),
        ),
      ),
    );
  }
}
