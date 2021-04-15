import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:owl/categories.dart';
import 'package:owl/loginpage.dart';
import 'package:owl/signup.dart';

class userprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Profile',
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
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Hexcolor('131A46'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/login-owl.png'),
              ),
            ),
            Text(
              "Vishwajeet Hogale",
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueGrey[200],
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30.0,
                    color: Colors.blueGrey[800],
                  ),
                  title: Text(
                    "+91 7760175955",
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontSize: 25.0,
                        fontFamily: 'Source'),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 30.0,
                    color: Colors.blueGrey[800],
                  ),
                  title: Text(
                    "vishwajeethogale307@gmail.com",
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontSize: 13.5,
                        fontFamily: 'Source'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
