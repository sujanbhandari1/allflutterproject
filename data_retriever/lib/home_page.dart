import 'package:flutter/material.dart';

class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home,color: Colors.purple,),
          title: Text('Data Fetcher'),
        ),
      ),
    );
  }
}
