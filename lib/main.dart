// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice Roller App",
      home: NewWid(),
    );
  }
}

class NewWid extends StatefulWidget {
  const NewWid({Key? key}) : super(key: key);

  @override
  _NewWidState createState() => _NewWidState();
}

class _NewWidState extends State<NewWid> {
  int dicenum = 1;

  void changeDice() {
    setState(() {
      dicenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dice Roller App"),
      ),
      drawer: DrawNew(),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Image.asset(
              "assets/$dicenum.jpg",
              height: 200,
              width: 200,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          MaterialButton(
            minWidth: 150,
            height: 50,
            onPressed: changeDice,
            child: Text(
              "Roll Dice",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          SizedBox(
            height: 200,
          ),
          Text(
            "Flutter with Bimal",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}

class DrawNew extends StatefulWidget {
  const DrawNew({Key? key}) : super(key: key);

  @override
  _DrawNewState createState() => _DrawNewState();
}

class _DrawNewState extends State<DrawNew> {
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
