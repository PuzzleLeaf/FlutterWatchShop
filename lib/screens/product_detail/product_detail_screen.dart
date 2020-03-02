import 'package:flutter/material.dart';
import 'package:watch_shop/screens/product_detail/widgets/detail_text_widget.dart';
import 'package:watch_shop/widgets/circle_icon_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailScreen({this.product});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            width: width,
            height: height * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 40,
                      ),
                    ),
                    Expanded(
                      child: Row(
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'SPECIAL',
                      style: TextStyle(
                        letterSpacing: 4,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      color: Colors.orange,
                      width: 50,
                      height: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  product['name'],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: product['img'],
                    child: Image.network(
                      product['img'],
                      height: height * 0.35,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DetailTextWidget(
                      title: 'PRICE',
                      value: '\$${product['price']}',
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    DetailTextWidget(
                      title: 'COLOR',
                      value: product['color'],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    DetailTextWidget(
                      title: 'STRAP',
                      value: product['strap'],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.7),
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 30),
            width: width,
            height: height * 0.3,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    product['overView'],
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: height * 0.7 - 25,
            right: 20,
            child: Row(
              children: <Widget>[
                CircleIconWidget(
                  icon: Icons.add_shopping_cart,
                  color: Colors.amber,
                  size: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleIconWidget(
                  icon: Icons.favorite,
                  color: Colors.deepOrange,
                  size: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
