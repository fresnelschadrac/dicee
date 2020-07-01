import 'package:flutter/material.dart';
import 'dart:math';

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
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceFace() {
    setState(() {
      //print('Left button got pressed!');
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('diceNumber = $leftDiceNumber');
    });
  }
}

/*class DicePage extends StatelessWidget {
  int leftDiceNumber = 0;
  int rightDiceNumber = 0;

  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 2;
    rightDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left button got pressed!');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right button got pressed!');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
*/
