import 'package:data_retriever/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          accentColor: Colors.red,
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black))
      ),
      home: homePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
