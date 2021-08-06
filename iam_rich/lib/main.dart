import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Iam rich",
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am Rich"),
          backgroundColor: Colors.yellow[300],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}


