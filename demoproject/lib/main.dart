import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(NaxaStore());

class NaxaStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          accentColor: Colors.red,
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black))),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
