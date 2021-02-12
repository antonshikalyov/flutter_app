import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

Color clr;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void randomColor(){
    setState(() {
      clr = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    });
  }

  @override
  void initState() {
    randomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => randomColor(),
      child: Container(
        alignment: Alignment.center,
        color: clr,
        child: const Text(
          "Hey there!!!",
          style: TextStyle(fontSize: 50, color: Colors.black),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}


