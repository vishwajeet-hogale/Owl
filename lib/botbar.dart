import 'package:flutter/material.dart';
import 'package:owl/categories.dart';
import 'package:owl/userdetails.dart';
import 'package:owl/myreviews.dart';

class BotBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 2 - 48.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home, color: Color(0xFF676E79)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => category()));
                      },
                    ),
                    IconButton(
                      icon:
                          Icon(Icons.person_outline, color: Color(0xFF676E79)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => userprofile()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30.0),
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 2 - 48.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search, color: Color(0xFF676E79)),
                    IconButton(
                      icon: Icon(Icons.comment, color: Color(0xFF676E79)),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MyCard()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
