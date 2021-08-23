import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: DicePage(),
      ),
    )
  );
}

// ignore: must_be_immutable
class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void numbers () {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: FlatButton(onPressed: (){
            numbers();
          },child: Image.asset('images/dice$LeftDiceNumber.png'))),
          Expanded(child: FlatButton(onPressed: (){
            numbers();
          },child: Image.asset('images/dice$RightDiceNumber.png')))
        ],
      ),
    );
  }
}



