import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final String rating;

  RatingWidget({this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        for (var i = 0; i < 5; i++)
          Icon(
            Icons.star,
            color: double.parse(rating) >= i + 1 ? Colors.orange : Colors.grey,
            size: 15,
          )
      ],
    );
  }
}
