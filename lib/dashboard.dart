import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:owl/categories.dart';
import 'package:owl/getfeed.dart';
import 'package:owl/botbar.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Widget _username(String name) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'Pacifico',
      ),
    );
  }

  Widget _makecatcard(String name, String url) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 120,
          height: 40,
          padding: EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            color: Hexcolor('#C4C4C4'),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.category, size: 40.0),
                Image(image: NetworkImage(url), fit: BoxFit.contain),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        )
      ],
    );
  }

  List _categories() {
    List<Widget> new_list = new List<Widget>();
    var category_dictionary = {
      'Electronics':
          "https://i0.wp.com/www.indiaretailing.com/wp-content/uploads/2017/07/videocon-ha.jpg",
      'Movies':
          'https://drive.google.com/file/d/1eWyDesjtR01cqIB-H7omxVmcmNvsxPKS/view?usp=sharing',
      'Restaurant':
          'https://drive.google.com/file/d/1U1-lP1l4_x6ZAFqyOvioP-t-1Eha0o4D/view?usp=sharing',
      'Services':
          'https://drive.google.com/file/d/1RAQqg6SxiNm_oq5KaQ9WCMVfpmWYunCH/view?usp=sharing',
      'Products':
          'https://drive.google.com/file/d/1-9SlhyexwjPEPNJbEVR5Hrs6Q7p4DRhy/view?usp=sharing%27%7D'
    };
    // for (var i = 0; i < catnames.length; i++) {
    //   new_list.add(_makecatcard(catnames[i]));
    // }
    category_dictionary.forEach((key, value) {
      new_list.add(_makecatcard(key, value));
    });
    return new_list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Hexcolor('#131A46'),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(width: 20.0),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      backgroundImage: AssetImage('images/login-owl.png'),
                    ),
                    Container(child: _username("Vishwajeet Shivaji Hogale")),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Hexcolor('#E5E5E5'),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                  ),
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: ListView(
                    addAutomaticKeepAlives: false,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Search",
                            fillColor: Colors.grey,

                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              borderSide: new BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Search can't be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: MediaQuery.of(context).size.width - 60.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.0),
                            topRight: Radius.circular(45.0),
                            bottomLeft: Radius.circular(45.0),
                            bottomRight: Radius.circular(45.0),
                          ),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("images/5.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Explore Categories",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Varela',
                                fontSize: 20.0),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => category()));
                            },
                            child: Text(
                              "View More",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(
                        height: 120.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          // children: [
                          //   _makecatcard("name"),
                          //   _makecatcard("name"),
                          //   _makecatcard("name"),
                          //   _makecatcard("name"),
                          //   _makecatcard("name"),
                          //   _makecatcard("name"),
                          //   _makecatcard("name")
                          // ],
                          children: _categories(),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hoot Feed",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Varela',
                                fontSize: 20.0),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => category()));
                            },
                            child: Text(
                              "Check Category",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      getData() //all product details go here present in getfeed dart file
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
      bottomNavigationBar: BotBar(),
    );
  }
}
