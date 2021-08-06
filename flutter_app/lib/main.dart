import 'package:flutter/material.dart';
// the main function is the starting point of flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[200],
        appBar: AppBar(
          title: Center(child: Text("RideET")),
          backgroundColor: Colors.blueGrey[900],

        ),
        body: Center(
          child: Image(image:AssetImage('images/cv.jpg'),
      ),
        )
    ),
  ),
  );
}
