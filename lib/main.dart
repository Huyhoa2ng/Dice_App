import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dicee"),
        centerTitle: true,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var RandomDiceNumberLeft = 6;
  var RandomDiceNumberRight = 5;

  void ChangeRandomNumber() {
    RandomDiceNumberLeft = Random().nextInt(6) + 1;
    RandomDiceNumberRight = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Row(
          children: <Widget>[
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  ChangeRandomNumber();
                });
              },
              child: Image.asset('images/dice$RandomDiceNumberLeft.png'),
            )),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        ChangeRandomNumber();
                      });
                    },
                    child:
                        Image.asset('images/dice$RandomDiceNumberRight.png')))
          ],
        ),
      ),
    );
  }
}
