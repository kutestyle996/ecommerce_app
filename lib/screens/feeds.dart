import 'package:ecommerce_app/widget/feed_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.countBuilder(
      crossAxisCount: 6
          ,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => new FeedProducts(),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(3, index.isEven ? 4:5),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    )
        // GridView.count(
        //   childAspectRatio: 240/290,
        //   crossAxisSpacing: 8,
        //   mainAxisSpacing: 8,
        //   crossAxisCount: 2,
        //   children: List.generate(100, (index) {
        //     return FeedProducts();
        //   }),
        // ),
        );
  }
}
