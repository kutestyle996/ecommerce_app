import 'package:backdrop/app_bar.dart';
import 'package:backdrop/button.dart';
import 'package:backdrop/scaffold.dart';
import 'package:backdrop/sub_header.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_app/constants/my_colors.dart';
import 'package:ecommerce_app/inner_screens/brands_navigation_rail.dart';
import 'package:ecommerce_app/widget/backlayer.dart';
import 'package:ecommerce_app/widget/category.dart';
import 'package:ecommerce_app/widget/popular_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _carouselImage = [
    'assets/images/carousel1.png',
    'assets/images/carousel2.jpeg',
    'assets/images/carousel2.jpeg',
    'assets/images/carousel4.png'
  ];

  List _branchImages = [
    'assets/images/apple.jpg',
    'assets/images/Dell.jpg',
    'assets/images/h&m.jpg',
    'assets/images/addidas.jpg',
    'assets/images/nike.jpg',
    'assets/images/samsung.jpg',
    'assets/images/Huawei.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BackdropScaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          headerHeight: MediaQuery.of(context).size.height * 0.25,
          appBar: BackdropAppBar(
            title: Text("Home"),
            leading: BackdropToggleButton(
              icon: AnimatedIcons.home_menu,
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [MyColors.starterColor, MyColors.endColor])),
            ),
            actions: <Widget>[
              IconButton(
                iconSize: 15,
                padding: EdgeInsets.all(10),
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 13,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU',
                      )),
                ),
                onPressed: () {},
              )
            ],
          ),
          backLayer: BackLayerMenu(),
          frontLayer: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 190,
                  child: Carousel(
                    boxFit: BoxFit.fill,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Colors.purple,
                    dotBgColor: Colors.black.withOpacity(0.2),
                    dotPosition: DotPosition.bottomCenter,
                    showIndicator: true,
                    indicatorBgPadding: 5.0,
                    images: [
                      ExactAssetImage(_carouselImage[0]),
                      ExactAssetImage(_carouselImage[1]),
                      ExactAssetImage(_carouselImage[2]),
                      ExactAssetImage(_carouselImage[3]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoryWidget(
                          index: index,
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Popular Brands',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                      Spacer(),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BrandNavigationRailScreen(
                                        index: 7,
                                      )));
                        },
                        child: Text(
                          'View all...',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Swiper(
                    viewportFraction: 0.8,
                    scale: 0.9,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          child: Image.asset(
                            _branchImages[index],
                            fit: BoxFit.fill,
                          ),
                          color: Colors.blueGrey,
                        ),
                      );
                    },
                    itemCount: _branchImages.length,
                    autoplay: true,
                    onTap: (index) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BrandNavigationRailScreen(
                                    index: index,
                                  )));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Popular Products',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                      Spacer(),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'View all...',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 285,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return PopularProducts();
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
