import 'package:flutter/material.dart';
import 'package:watch_shop/widgets/circle_icon_widget.dart';
import 'package:watch_shop/widgets/rating_widget.dart';

class ProductWidget extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductWidget({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 270,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 80),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(7, 7),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product['name'],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$${product['price']}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RatingWidget(
                      rating: product['rating'],
                    ),
                    CircleIconWidget(
                      icon: Icons.favorite,
                      size: 7,
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Color(0xfff3f5f7),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Hero(
            tag: product['img'],
            child: Image.network(
              product['img'],
              height: 170,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
