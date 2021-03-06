import 'dart:html';

import 'package:ecommerce_app/constants/my_colors.dart';
import 'package:ecommerce_app/constants/my_icons.dart';
import 'package:ecommerce_app/provider/dark_theme_provider.dart';
import 'package:ecommerce_app/screens/cart.dart';
import 'package:ecommerce_app/screens/wishlist.dart';
import 'package:ecommerce_app/widget/feed_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU'),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.purple.shade200,
                          onTap: () {},
                          borderRadius: BorderRadius.circular(30),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.save,
                              size: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.purple.shade200,
                          onTap: () {},
                          borderRadius: BorderRadius.circular(30),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.share,
                              size: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'Title',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '\$ US 16',
                              style: TextStyle(
                                  color: themeState.darkMode
                                      ? Theme.of(context).disabledColor
                                      : MyColors.subTitle,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 21,
                              color: themeState.darkMode
                                  ? Theme.of(context).disabledColor
                                  : MyColors.subTitle),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      _details(themeState.darkMode, 'Brand', 'BrandName'),
                      _details(themeState.darkMode, 'Quantity', '12 left'),
                      _details(themeState.darkMode, 'Category', 'Cat Name'),
                      _details(themeState.darkMode, 'Popularity', 'Popular'),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                        height: 1,
                      ),
                      Container(
                        color: Theme.of(context).backgroundColor,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'No reviews yet',
                                style: TextStyle(
                                    color: Theme.of(context).textSelectionColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Be the first review',
                                style: TextStyle(
                                    color: themeState.darkMode
                                        ? Theme.of(context).disabledColor
                                        : MyColors.subTitle,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              height: 1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Text(
                    'Suggested products',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: double.infinity,
                  height: 300,
                  child:
                      ListView.builder(
                          itemCount: 7,
                          itemBuilder: (BuildContext context, int index) {
                            return FeedProducts();
                          }
                      ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'detail'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.normal
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    MyAppIcons.wishlist,
                    color: MyColors.favColor,
                  ),
                  onPressed: (){
                    Navigator.of(context).pushNamed(WishListScreen.routeName);
                  },
                ),
                IconButton(
                  icon: Icon(
                    MyAppIcons.cart,
                    color: MyColors.cartColor,
                  ),
                  onPressed: (){
                    Navigator.of(context).pushNamed(CartScreen.routeName);
                  },
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      color: Colors.redAccent.shade400,
                      onPressed: (){},
                      child: Text(
                        'Add to cart'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      color: Theme.of(context).backgroundColor,
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text(
                            'Buy now'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.payment,
                            color: Colors.green.shade700,
                            size: 19,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: themeState.darkMode ? Theme.of(context).disabledColor : MyColors.subTitle,
                    height: 50,
                    child: InkWell(
                      splashColor: MyColors.favColor,
                      onTap: (){},
                      child: Center(
                        child: Icon(
                          MyAppIcons.wishlist,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _details(bool isDarkMode, String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontWeight: FontWeight.w600,
                fontSize: 21),
          ),
          Text(
            content,
            style: TextStyle(
                color: isDarkMode
                    ? Theme.of(context).disabledColor
                    : MyColors.subTitle,
                fontWeight: FontWeight.w400,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
