import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:owl/signup.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Expanded(
//           child: Container(
//             // height: 500.0,
//             // margin: EdgeInsets.fromLTRB(0, 90.0, 0, 0),

//             padding: EdgeInsets.fromLTRB(85, 85, 85, 85),
//             child: CircleAvatar(
//               child: Center(
//                 child: Image(
//                   image: AssetImage('images/login-owl.png'),
//                   height: 250.0,
//                   width: 250.0,
//                 ),
//               ),
//               radius: 60.0,
//               backgroundColor: Hexcolor('#EC8B5E'),
//             ),
//             decoration: BoxDecoration(
//               color: Hexcolor('#131846'),
//               // color: Colors.white,
//               // color: Color.fromRGBO(255, 255, 255, 0.92),
//               borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(225.0),
//               ),
//             ),
//           ),
//         ),
//         // SizedBox(
//         //   child: Center(
//         //     child: Text(
//         //       "Owl",
//         //       style: TextStyle(
//         //         fontSize: 40,
//         //         color: Colors.white70,
//         //       ),
//         //     ),
//         //   ),
//         //   height: 100.0,
//         // ),
//         Container(
//           // color: Colors.white70,
//           height: 250.0,
//           // padding: EdgeInsets.symmetric(vertical: 130.0, horizontal: 30.0),
//           width: 100.0,
//           decoration: BoxDecoration(
//             color: Colors.white70,
//             borderRadius: BorderRadius.only(topLeft: Radius.circular(125.0)),
//           ),
//           child: Column(
//             children: [
//               // Center(
//               //   child: Text('Login to continue'),
//               // ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 570, left: 50.0, right: 50.0),
      child: Column(
        children: [
          // TextField(
          //   decoration: InputDecoration(
          //     labelText: 'EMAIL',
          //     labelStyle: TextStyle(
          //       fontWeight: FontWeight.w600,
          //       color: Hexcolor('#EC8B5E'),
          //     ),
          //   ),
          // ),

          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new TextFormField(
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
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
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
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Want an account?',
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 5.0),
              // ignore: missing_required_param
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  'Click here',
                  style: TextStyle(color: Colors.blue, fontSize: 12.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
