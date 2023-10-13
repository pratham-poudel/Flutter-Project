import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, title: "Dice App", home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dicenumber = 1;
  changeDice() {
    setState(() {
      dicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "DICE ROLLER",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Center(
            child: Image.asset(
          "assets/dice$dicenumber.png",
          height: 250,
          width: 250,
        )),
        MaterialButton(
          onPressed: changeDice,
          color: Colors.blue,
          child: const Text(
            "ROLL",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 300,
        ),
        const Text(
          "Developed By : Pratham Poudel",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
        ),
      ]),
    );
  }
}
