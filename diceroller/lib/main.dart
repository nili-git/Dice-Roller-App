import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice App",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;
  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Roller",
          style: TextStyle(color: Colors.purple),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          //Image
          Center(
              child: Image.asset("assets/ diceNumber.png",
                  height: 250, width: 250)),

         //Button
          MaterialButton(
            color: Colors.red,
            onPressed: changeDice,
            child: Text(
              "Roll",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 70),
          //Text
         /* Text("#FlutterwithNili",
              style: TextStyle(fontWeight: FontWeight.bold)),*/
        ],
      ),
    );
  }
}
