import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Feed',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
