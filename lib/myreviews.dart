// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:owl/categories.dart';
// import 'package:owl/dashboard.dart';
// import 'package:owl/loginpage.dart';
// import 'package:owl/signup.dart';

// class MyReviews extends StatelessWidget {
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
//           'My Reviews',
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
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:owl/categories.dart';
import 'package:owl/loginpage.dart';
import 'package:owl/signup.dart';

class MyCard extends StatelessWidget {
  List<Widget> getAllReviews() {
    List<Widget> new_list = new List<Widget>();
    //Get firebase data data = [product_image_url,Review,Rating]
    //data.forEach((i,j,k){new_list.add()})
    //return new_list
  }

  List<Widget> cards = new List.generate(
      5, (i) => new CustomCard()); // comment when above function is complete
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Reviews'),
        backgroundColor: new Color(0xFFF17532),
      ),
      body: new Container(
        child: new ListView(
          children: cards, //getAllReviews()
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Image.network(
              'https://i0.wp.com/www.indiaretailing.com/wp-content/uploads/2017/07/videocon-ha.jpg'),
          new Padding(
              padding: new EdgeInsets.all(7.0),
              child: new Row(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Icon(Icons.thumb_up),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Text(
                      'Like',
                      style: new TextStyle(fontSize: 18.0),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Icon(Icons.comment),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Text('My Comment',
                        style: new TextStyle(fontSize: 18.0)),
                  ),
                  SizedBox(height: 50),
                ],
              )),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                "It is okay okay idk whatever ",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           // Add your onPressed code here!
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => category()));
//         },
//         label: Text('Login'),
//         icon: Icon(Icons.arrow_forward),
//         backgroundColor: Hexcolor('#EC8B5E'),
//       ),
//       // backgroundColor: Color.fromRGBO(255, 255, 255, 0.92),
//       body: Container(
//         child: Stack(
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("images/login-1.jpg"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             login(),
//           ],
//         ),
//       ),
//     );
//
//     // return MaterialApp(home: SignUp());
//   }
// }
