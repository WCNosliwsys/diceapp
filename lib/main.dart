import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DiceApp()));
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int dado1 = 1;
  int dado2 = 1;

  void TirarDados() {
    dado1 = Random().nextInt(6) + 1;
    dado2 = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("DICEAPP"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[200]),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.lightBlue[400],
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        TirarDados();
                      },
                      child: Image.asset('assets/images/dice$dado1.png'))),
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        TirarDados();
                      },
                      child: Image.asset('assets/images/dice$dado2.png'))),
            ],
          )
        ]),
      ),
    );
  }
}
