import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('Zar Düşeş Beyler Alışverişler'),
          ),
          backgroundColor: Colors.black,
        ),
        body: Kolpacino(),
      ),
    ),
  );
}

class Kolpacino extends StatefulWidget {
  @override
  _KolpacinoState createState() => _KolpacinoState();
}

class _KolpacinoState extends State<Kolpacino> {
  int leftImage = 1;
  int rightImage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftImage = Random().nextInt(3) + 1;
                });
              },
              child: Image.asset('images/kolpacino$leftImage.jpeg'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightImage = Random().nextInt(3) + 1;
                });
              },
              child: Image.asset('images/kolpacino$rightImage.jpeg'),
            ),
          ),
        ],
      ),
    );
  }
}
