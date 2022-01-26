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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dice Roller App"),
      ),
      drawer: DrawNew(),
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
