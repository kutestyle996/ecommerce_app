import 'package:ecommerce_app/screens/cart.dart';
import 'package:ecommerce_app/screens/feeds.dart';
import 'package:ecommerce_app/screens/home.dart';
import 'package:ecommerce_app/screens/search.dart';
import 'package:ecommerce_app/screens/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = "/BottomBarScreen";

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

   late List<Map<String, Widget>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': FeedScreen(),
      },
      {
        'page': SearchScreen(),
      },
      {
        'page': CartScreen(),
      },
      {
        'page': UserScreen(),
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Theme.of(context).textSelectionColor,
          selectedItemColor: Colors.purple,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), tooltip: 'Home', label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.rss_feed), tooltip: 'Feeds', label: 'Feeds'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), tooltip: 'Search', label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), tooltip: 'Cart', label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), tooltip: 'User', label: 'User'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        tooltip: 'Search',
        elevation: 5,
        child: Icon(Icons.search),
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      ),
    );
  }
}
