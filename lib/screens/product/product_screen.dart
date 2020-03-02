import 'package:flutter/material.dart';
import 'package:watch_shop/model/data.dart';
import 'package:watch_shop/screens/product/widgets/collection_widget.dart';
import 'package:watch_shop/screens/product/widgets/product_widget.dart';
import 'package:watch_shop/screens/product/widgets/vertical_menu_widget.dart';
import 'package:watch_shop/screens/product_detail/product_detail_screen.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double menuWidth = 80;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: <Widget>[
          VerticalMenuWidget(
            width: menuWidth,
            height: height,
          ),
          Container(
            width: width - menuWidth,
            height: height,
            padding: const EdgeInsets.only(
              top: 55,
              right: 16,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 28,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Product',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 5,
                    right: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      for (var i = 0; i < watchData.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 250),
                                pageBuilder: (context, _, __) => ProductDetailScreen(product: watchData[i],),
                              ));
                            },
                            child: ProductWidget(
                              product: watchData[i],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Collection',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(bottom: 20, top: 20, left: 5, right: 5),
                  child: Row(
                    children: <Widget>[
                      for (var i = 0; i < collectionData.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: CollectionWidget(
                            collection: collectionData[i],
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
