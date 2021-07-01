import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          userListTile(context, 'Email', 'test', 0),
          userListTile(context, 'Phone number', 'test', 1),
          userListTile(context, 'Shipping address', 'test', 2),
          userListTile(context, 'Joined date', 'test', 3),
        ],
      ),
    );
  }

  List<IconData> _userTileIcon = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app_rounded
  ];

  Widget userListTile( BuildContext context, String title, String subTitle, int index) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: (){},
          title: Text(title),
          subtitle: Text(subTitle),
          leading: Icon(_userTileIcon[index]),
        ),
      ),
    );
  }

}
