import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text('Sliver Appbar'),
          centerTitle: true,
          expandedHeight: 200,
          backgroundColor: Colors.red,
        ),
        SliverFillRemaining(
          child: Center(
            child: Text('Hello world'),
          ),
        )
      ],
    );
  }
}
