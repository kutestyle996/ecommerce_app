import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800
          ),
        ),
      ),
    );
  }
}
