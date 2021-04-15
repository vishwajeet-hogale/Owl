import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:owl/bottomnavbar.dart';
import 'package:owl/product_page.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category>
    with SingleTickerProviderStateMixin {
  TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
  }

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
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabcontroller,
            indicatorColor: Colors.transparent,
            labelColor: Hexcolor('#EC8B5E'),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              // Loop this as new categories comee. Make new widget func. that returns the tabs and tab bars
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cake',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Ice Cream',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 10.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabcontroller,
              children: [
                ProductPage(),
                ProductPage(),
                ProductPage(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        child: Image(
          image: AssetImage('images/login-owl.png'),
          fit: BoxFit.contain,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomBar(),
    );
  }
}
