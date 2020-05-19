import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDicee = 1;
  int secondDicee = 6;

  int randomNumber() {
    return new Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$firstDicee.png',
              ),
              onPressed: () {
                setState(() {
                  firstDicee = randomNumber();
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$secondDicee.png'),
              onPressed: () {
                setState(() {
                  secondDicee = randomNumber();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
