import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final password, repassword;
    return Scaffold(
      backgroundColor: Hexcolor('#EC8B5E'),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45.0),
              topRight: Radius.circular(45.0),
            ),
          ),
          margin: EdgeInsets.only(top: 70.0),
          child: Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'OWL',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontWeight: FontWeight.w800,
                        fontSize: 28.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Text(
                      'Gives a hoot',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontWeight: FontWeight.w800,
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                  // child: CircleAvatar(
                  //   radius: 80,
                  //   backgroundImage: AssetImage('images/login-owl.png'),
                  // ),
                  child: Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/login-owl.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70.0),
                TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Email",
                    fillColor: Colors.grey,

                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(height: 20.0),
                new TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "Enter Password",
                    fillColor: Colors.grey,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(height: 20.0),
                new TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "Re-enter Password",
                    fillColor: Colors.grey,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                RaisedButton(
                  shape: StadiumBorder(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.0),
                      // Icon(
                      //   Icons.arrow_forward,
                      //   color: Colors.white,
                      //   size: 30.0,
                      // ),
                      SizedBox(height: 5.0),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
