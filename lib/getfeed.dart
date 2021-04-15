import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:owl/categories.dart';

class getData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _makeproductcard(String name, int price, int rating, String url) {
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 60.0,
            height: 140.0,
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Hexcolor('#E5E5E5'),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Image(image: NetworkImage(url), fit: BoxFit.fill),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            letterSpacing: 1.5,
                            fontFamily: 'Varela'),
                      ),
                      Text("Hello"),
                      Row(
                        children: [
                          SizedBox(
                            width: 85.0,
                          ),
                          RaisedButton(
                            shape: StadiumBorder(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // SizedBox(height: 5.0),
                                // // Icon(
                                // //   Icons.arrow_forward,
                                // //   color: Colors.white,
                                // //   size: 30.0,
                                // // ),
                                // SizedBox(height: 5.0),
                                Text(
                                  'Add a Review',
                                  style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            // onPressed: _changeText,
                            onPressed: () {},
                            color: Hexcolor('#EC8B5E'),

                            textColor: Colors.yellow,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            splashColor: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.0)
        ],
      );
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _makeproductcard("Vishwa", 34, 5,
              "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5097/5097300cv14d.jpg"),
          _makeproductcard("Vishwa", 34, 5,
              "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5097/5097300cv14d.jpg"),
          _makeproductcard("Vishwa", 34, 5,
              "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5097/5097300cv14d.jpg"),
          _makeproductcard("Vishwa", 34, 5,
              "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5097/5097300cv14d.jpg")
        ],
      ),
    );
  }
}
