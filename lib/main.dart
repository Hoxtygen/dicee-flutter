import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 3;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("Left dice clicked");
              },
              child: Image(
                image: AssetImage("images/dice$leftDice.png"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("Right dice clicked");
              },
              child: Image(
                image: AssetImage('images/dice$rightDice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
