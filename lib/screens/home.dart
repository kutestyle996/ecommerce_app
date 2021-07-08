import 'package:backdrop/app_bar.dart';
import 'package:backdrop/button.dart';
import 'package:backdrop/scaffold.dart';
import 'package:backdrop/sub_header.dart';
import 'package:ecommerce_app/constants/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BackdropScaffold(
          headerHeight: MediaQuery.of(context).size.height*0.25,
          appBar: BackdropAppBar(
            title: Text("Home"),
            leading: BackdropToggleButton(
              icon: AnimatedIcons.home_menu,
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [MyColors.starterColor, MyColors.endColor]
                )
              ),
            ),
            actions: <Widget>[
              IconButton(
                iconSize: 15,
                padding: EdgeInsets.all(10),
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(radius: 13,
                    backgroundImage:
                    NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU',)
                  ),
                ), onPressed: () {

              },
              )
            ],
          ),
          backLayer: Center(
            child: Text("Back Layer"),
          ),
          subHeader: BackdropSubHeader(
            title: Text("Sub Header"),
          ),
          frontLayer: Center(
            child: Text("Front Layer"),
          ),
        ),
      ),
    );
  }
}
