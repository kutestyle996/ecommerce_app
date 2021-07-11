import 'package:ecommerce_app/constants/my_colors.dart';
import 'package:flutter/material.dart';

class WishlistFull extends StatefulWidget {
  @override
  _WishlistFullState createState() => _WishlistFullState();
}

class _WishlistFullState extends State<WishlistFull> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(right: 30, bottom: 10),
          child: Material(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(5),
            elevation: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('\$ 16',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        positionedRemove()
      ],
    );
  }

  Widget positionedRemove() {
    return Positioned(
      top: 20,
      right: 15,
      child: Container(
        height: 30,
        width: 30,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.all(0.0),
          color: MyColors.favColor,
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
