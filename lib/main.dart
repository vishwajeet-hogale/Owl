import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:owl/categories.dart';
import 'package:owl/dashboard.dart';
import 'package:owl/loginpage.dart';
import 'package:owl/signup.dart';

void main() {
  runApp(MaterialApp(title: "App", home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DashBoard()));
        },
        label: Text('Login'),
        icon: Icon(Icons.arrow_forward),
        backgroundColor: Hexcolor('#EC8B5E'),
      ),
      // backgroundColor: Color.fromRGBO(255, 255, 255, 0.92),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/login-1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            login(),
          ],
        ),
      ),
    );

    return MaterialApp(home: DashBoard());
  }
}
