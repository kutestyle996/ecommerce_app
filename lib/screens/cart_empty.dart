import 'package:ecommerce_app/constants/my_colors.dart';
import 'package:ecommerce_app/provider/dark_theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 80, left: 30, right: 30),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/cart_empty.png'))),
        ),
        Text('Your Cart Is Empty', textAlign: TextAlign.center, style: TextStyle (
          color: Theme.of(context).textSelectionColor,
          fontSize: 36,
          fontWeight: FontWeight.w600
        ),),
        SizedBox(height: 30,),
        Text('Looks Like You didn\'t add anything to your cart yet', textAlign: TextAlign.center, style: TextStyle(
          color: themeChange.darkMode ? Theme.of(context).disabledColor : MyColors.subTitle
        ),),
        SizedBox(height: 30,),
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.06,
          child: ElevatedButton(
            child: Text('shop now'.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontSize: 26,
              fontWeight: FontWeight.w600
            ),),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              )
            )
          ),
        )
      ],
    );
  }
}
