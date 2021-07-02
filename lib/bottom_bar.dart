import 'package:ecommerce_app/screens/cart.dart';
import 'package:ecommerce_app/screens/feeds.dart';
import 'package:ecommerce_app/screens/home.dart';
import 'package:ecommerce_app/screens/search.dart';
import 'package:ecommerce_app/screens/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'constants/my_icons.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = "/BottomBarScreen";

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Map<String, Object>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': HomeScreen(), 'title': 'Home screen'},
      {'page': FeedScreen(), 'title': 'Feed screen'},
      {'page': SearchScreen(), 'title': 'Search screen'},
      {'page': CartScreen(), 'title': 'Car screen'},
      {'page': UserScreen(), 'title': 'User screen'},
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
        clipBehavior: Clip.antiAlias,
        notchMargin: 0.01,
        shape: CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              color: Colors.white),
          child: BottomNavigationBar(
            onTap: _selectedPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).textSelectionColor,
            selectedItemColor: Colors.purple,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(MyAppIcons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(MyAppIcons.rss), label: 'Feeds'),
              BottomNavigationBarItem(
                  icon: Icon(null), label: 'Search', activeIcon: null),
              BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.cart), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(MyAppIcons.user), label: 'User'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          hoverElevation: 10,
          backgroundColor: Colors.purple,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: Icon(MyAppIcons.search),
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
        ),
      ),
    );
  }
}
