import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final int index;

  List<Map<String, Object>> categories = [
    {'categoryName': 'Phones', 'categoryImagePath': 'assets/images/CatPhones.png'},
    {'categoryName': 'Clothes', 'categoryImagePath': 'assets/images/CatClothes.jpg'},
    {'categoryName': 'Shoes', 'categoryImagePath': 'assets/images/CatShoes.jpg'},
    {'categoryName': 'Beauty&Health', 'categoryImagePath': 'assets/images/CatBeauty.jpg'},
    {'categoryName': 'BLaptops', 'categoryImagePath': 'assets/images/CatLaptops.png'},
    {'categoryName': 'Furniture', 'categoryImagePath': 'assets/images/CatFurniture.jpg'},
    {'categoryName': 'Watches', 'categoryImagePath': 'assets/images/CatWatches.jpg'},
  ];

  CategoryWidget({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(categories[index]['categoryImagePath']),
              fit: BoxFit.cover
            )),
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 150,
        height: 150,
      ),
      Positioned(
          bottom: 0,
          left: 0, right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Theme.of(context).backgroundColor,
            child: Text(
              categories[index]['categoryName'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize:18,
                color: Theme.of(context).textSelectionColor
              ),
            ),
          )
      )
    ]);
  }
}
