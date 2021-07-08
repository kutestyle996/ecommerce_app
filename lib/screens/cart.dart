import 'package:ecommerce_app/constants/my_colors.dart';
import 'package:ecommerce_app/constants/my_icons.dart';
import 'file:///D:/ecommerce_app/lib/widget/cart_empty.dart';
import 'file:///D:/ecommerce_app/lib/widget/cart_full.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List product = [];
    return product.isNotEmpty
        ? Scaffold(
            body: CartEmpty(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text('Cart Items Count'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(MyAppIcons.trash),
                )
              ],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return CartFull();
                  }),
            ),
            bottomSheet: checkoutSection(context),
          );
  }

  Widget checkoutSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      MyColors.gradiendLStart,
                      MyColors.gradiendLEnd
                    ],
                    stops: [0.0, 0.7]
                  )
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    splashColor: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).textSelectionColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Total: ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'US \$ 144',
              //textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
