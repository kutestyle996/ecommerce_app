import 'package:ecommerce_app/widget/wishlist_empty.dart';
import 'package:ecommerce_app/widget/wishlist_full.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  static const routeName = '/wishlist';

  @override
  Widget build(BuildContext context) {
    List wishlist = [];
    return !wishlist.isEmpty
        ? Scaffold(
            body: WishListEmpty(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text('Wishlist ()'),
            ),
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return WishlistFull();
                }));
  }
}
