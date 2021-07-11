import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Material(
          color: Colors.transparent,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          child: InkWell(
            onTap: (){},
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 7,
                      child: Icon(
                        Entypo.star_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 32,
                      right: 12,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Theme.of(context).backgroundColor,
                        child: Text(
                          '\$ 12.2',
                          style:
                              TextStyle(color: Theme.of(context).textSelectionColor),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        maxLines: 1,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Description',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800]),
                          ),
                          Spacer(),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(30.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  MaterialCommunityIcons.cart_plus,
                                  size: 25,
                                    color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
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
