import 'package:flutter/material.dart';
import 'constants.dart';

class listViewContainer extends StatelessWidget {
  listViewContainer(
      {required this.img,
      required this.name,
      required this.price,
      required this.symbol,
      required this.quantity});

  String img;
  String name;
  String price;
  String symbol;
  String quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        // color: Colors.amber[600],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              child: Image.asset(
                img,
                height: 150,
                width: 150,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  name,
                  style: kNameTextStyle,
                )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      '$price ',
                      style: kPriceTextStyle,
                    ),
                    Text(
                      '$symbol',
                      style: kSymbolTextStyle,
                    ),
                    Text(
                      '$quantity',
                      style: kQuantityTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: Icon(
                          Icons.favorite_outline,
                          color: Color(0xFF9586A8),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xFF0BCE83)),
                      onPressed: () {},
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        // color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
