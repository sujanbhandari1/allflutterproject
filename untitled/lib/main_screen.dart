import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 50.0, top: 20.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110,
            ),
            Image.asset(
              'Images/applenews.png',
              width: 80,
              height: 80,
            ),
            SizedBox(
              height: 1.0,
            ),
            Text(
              'Welcome to',
              style: GoogleFonts.firaSansCondensed(textStyle: kBlackTextStyle),
            ),
            Text(
              'Apple News',
              textAlign: TextAlign.left,
              style: GoogleFonts.firaSansCondensed(textStyle: kRedTextStyle),
            ),
            SizedBox(height: 15,),
            Text(
              'The best stories from the sources you love, selected just for you.',
              style: TextStyle(fontSize: 17,),
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'Images/siri-icon-redesign.png',
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Siri, suggests stories, channels and topics based on Safari and app usage. You can change this settings.',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'About Apple News & Privacy...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: 500,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text('Continue')),
            )
          ],
        ),
      ),
    ));
  }
}
