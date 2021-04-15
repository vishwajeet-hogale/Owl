// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:owl/bottomnavbar.dart';
// // import 'package:owl/product_page.dart';

// class ProductDetail extends StatelessWidget {
//   final assetPath, productprice, productname;
//   ProductDetail({this.assetPath, this.productprice, this.productname});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Hexcolor('#EC8B5E'),
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Text(
//           'Various Categories',
//           style: TextStyle(
//             fontFamily: 'Varela',
//             fontSize: 28.0,
//             color: Hexcolor('#EC8B5E'),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.notifications_none,
//               color: Hexcolor('#EC8B5E'),
//             ),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           SizedBox(height: 15.0),
//           Padding(
//             padding: EdgeInsets.only(left: 20.0),
//             child: Text(
//               'Cookie',
//               style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFFF17532),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 15.0,
//           ),
//           Hero(
//             tag: assetPath,
//             child: Image.asset(
//               assetPath,
//               height: 150.0,
//               width: 180.0,
//               fit: BoxFit.contain,
//             ),
//           ),
//           SizedBox(height: 20.0),
//           Center(
//             child: Text(
//               productprice,
//               style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFFF17532),
//               ),
//             ),
//           ),
//           SizedBox(height: 10.0),
//           Center(
//             child: Text(
//               productname,
//               style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF575E67),
//               ),
//             ),
//           ),
//           SizedBox(height: 20.0),
//           Center(
//             child: Container(
//               width: MediaQuery.of(context).size.width - 50.0,
//               child: Text(
//                 "Get Description from firebase",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontFamily: 'Varela',
//                   fontSize: 16.0,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFFB4B8B9),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Text("Make the adding comment component"),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Color(0xFFF17532),
//         child: Icon(Icons.fastfood),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:owl/bottomnavbar.dart';
// import 'package:owl/product_page.dart';

class ProductDetail extends StatelessWidget {
  final assetPath, productprice, productname;
  final _formKey = GlobalKey<FormState>();
  ProductDetail({this.assetPath, this.productprice, this.productname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // elevation: 9.0,
        onPressed: () {},
        backgroundColor: Colors.transparent,
        child: Image(
          image: AssetImage('images/login-owl.png'),
          fit: BoxFit.contain,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Hexcolor('#EC8B5E'),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Various Categories',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 28.0,
            color: Hexcolor('#EC8B5E'),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Hexcolor('#EC8B5E'),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Cookie',
              style: TextStyle(
                fontFamily: 'Varela',
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Hero(
            tag: assetPath,
            child: Image.asset(
              assetPath,
              height: 150.0,
              width: 180.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              productprice,
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              productname,
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF575E67),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                "Get Description from firebase",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              right: -20.0,
                              top: -40.0,
                              child: InkResponse(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: CircleAvatar(
                                  child: Icon(Icons.close),
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextFormField(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextFormField(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      child: Text("Add review"),
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("Add your review"),
            ),
          ),
          // SizedBox(
          //   height: 20.0,
          // ),
          Center(
            child: Container(
              height: 400.0,
              width: MediaQuery.of(context).size.width - 10.0,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      "Top Reviews",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 40),
                  _buildName(
                      imageAsset: 'images/4.jpg',
                      name: "Sharika",
                      score: "Yum"),
                  _buildName(
                      imageAsset: 'images/4.jpg', name: "Vishwa", score: "<3"),
                  _buildName(
                      imageAsset: 'images/4.jpg',
                      name: "Nidhi",
                      score: "tasty"),
                  _buildName(
                      imageAsset: 'images/4.jpg', name: "ddryf", score: "100%"),
                  _buildName(
                      imageAsset: 'images/4.jpg',
                      name: "dyhstu",
                      score: "yumm"),
                  _buildName(
                      imageAsset: 'images/4.jpg', name: "eyetu", score: "meh"),
                ],
              ),
            ),
          ),
          // Center(
          //    child: RaisedButton(
          //      child: Text("See top reviews"),
          //         onPressed: () {
          //         showDialog(
          //           context: context,
          //           builder: (context) {
          //             return Dialog(
          //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          //               elevation: 16,
          //               child: Container(
          //                 height: 400.0,
          //                 width: 360.0,
          //                 child: ListView(
          //                   children: <Widget>[
          //                     SizedBox(height: 40),
          //                     Center(
          //                       child: Text(
          //                         "Top Reviews",
          //                         style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
          //                       ),
          //                     ),
          //                     SizedBox(height: 40),
          //                     _buildName(imageAsset: 'images/4.jpg', name: "Sharika", score: "Yum"),
          //                     _buildName(imageAsset: 'images/4.jpg', name: "Vishwa", score: "<3"),
          //                     _buildName(imageAsset: 'images/4.jpg', name: "Nidhi", score: "tasty"),
          //                     _buildName(imageAsset: 'images/4.jpg', name: "ddryf", score: "100%"),
          //                     _buildName(imageAsset: 'images/4.jpg', name: "dyhstu", score: "yumm"),
          //                     _buildName(imageAsset: 'images/4.jpg', name: "eyetu", score: "meh"),
          //                   ],
          //                 ),
          //               ),
          //             );
          //           },
          //         );
          //       },
          //    ),
          // ),
        ],
      ),
    );

    //   body:

    //     ),
    //   ),
  }

  Widget _buildName({String imageAsset, String name, String score}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Container(height: 2, color: Colors.redAccent),
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(imageAsset),
                radius: 30,
              ),
              SizedBox(width: 12),
              Text(name),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text("${score}"),
                decoration: BoxDecoration(
                  color: Colors.yellow[900],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(

}
