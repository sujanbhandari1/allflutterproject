import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chips.dart';
import 'listView_item.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          elevation: 0,
          titleSpacing: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF2d0c57),
          ),
          backgroundColor: Color(0xFFF6F5F5),
          title: Text(
            'Vegetables',
            style: TextStyle(
              color: Color(0xFF2d0c57),
              fontSize: 30,
            ),
          ),
          flexibleSpace: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topRight,
                  image: ExactAssetImage(
                    'images/cabbage.png',
                    scale: 0.1,
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFFD9D0E3), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Color(0xFFD9D0E3)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 2.0,
                  children: [
                    chips(chipName: 'Cabbage and lettuce'),
                    chips(chipName: 'Cucumbers and tomato'),
                    chips(chipName: 'Onions and garlic'),
                    chips(chipName: 'Peppers'),
                    chips(chipName: 'Potatoes and carrots'),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    // ListTile( title: Text("Battery Full",style: TextStyle(color: Colors.black),), leading: Image.asset('images/boston_lettuce.jpg',),minLeadingWidth : 10,),
                    listViewContainer(
                      img: 'images/boston_lettuce.jpg',
                      name: 'Boston Lettuce',
                      price: '1.1',
                      symbol: '€ ',
                      quantity: '/ piece',
                    ),
                    SizedBox(height: 10),
                    listViewContainer(
                      img: 'images/purple_cauliflower.jpg',
                      name: 'Purple Cauliflower',
                      price: '1.85',
                      symbol: '€ ',
                      quantity: '/ kg',
                    ),
                    SizedBox(height: 10),
                    listViewContainer(
                      img: 'images/Savoy_Cabbage.jpg',
                      name: 'Purple Cauliflower',
                      price: '1.45',
                      symbol: '€ ',
                      quantity: '/ kg',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets, size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF9586A8),
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFF9586A8), size: 30.0),
            label: '',
          ),
        ],
      ),
    );
  }
}
