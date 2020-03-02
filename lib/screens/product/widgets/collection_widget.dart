import 'package:flutter/material.dart';

class CollectionWidget extends StatelessWidget {

  final Map<String, dynamic> collection;

  CollectionWidget({this.collection});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              collection['thumbImg'],
              height: 180,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            width: 120,
            height: 40,
            color: Colors.white.withOpacity(0.6),
            child: Center(child: Text(collection['collection'])),
          ),
        ],
      ),
    );
  }
}
