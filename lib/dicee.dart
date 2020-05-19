import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice1.png',
              ),
              onPressed: () {
                print('clicked on dicee 1');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice2.png'),
              onPressed: () {
                print('clicked on dicee 2');
              },
            ),
          )
        ],
      ),
    );
  }
}
