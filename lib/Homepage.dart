import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage secone = AssetImage("images/one.png");
  AssetImage sectwo = AssetImage("images/two.png");
  AssetImage secthree = AssetImage("images/three.png");
  AssetImage secfour = AssetImage("images/four.png");
  AssetImage secfive = AssetImage("images/five.png");
  AssetImage secsix = AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage secDiceImage;
  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      secDiceImage = secone;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    AssetImage newImage;
    
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceimage = newImage;
    });
  }

  void rollDice2() {
    int rand = (1 + Random().nextInt(6));
    AssetImage secImage;
    switch (rand) {
      case 1:
        secImage = secone;
        break;
      case 2:
        secImage = sectwo;
        break;
      case 3:
        secImage = secthree;
        break;
      case 4:
        secImage = secfour;
        break;
      case 5:
        secImage = secfive;
        break;
      case 6:
        secImage = secsix;
        break;
    }
    setState(() {
      secDiceImage = secImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dice Roller"),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.fromLTRB(20.0, 200.0, 20.0, 200.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Image(
                  image: diceimage,
                  width: 200.0,
                  height: 200.0,
                ))),
            Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Image(
                  image: secDiceImage,
                  width: 200.0,
                  height: 200.0,
                ))),
            Container(
                padding: const EdgeInsets.all(8),
                margin: EdgeInsets.all(20.0),
                child: RaisedButton(
                    onPressed: rollDice,
                    color: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    child: Text("Rolle dice!"))),
            Container(
                padding: const EdgeInsets.all(8),
                margin: EdgeInsets.all(20.0),
                child: RaisedButton(
                    onPressed: rollDice2,
                    color: Colors.yellow,
                    padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    child: Text("Rolle dice!")))
          ],
        ));
  }
}
