import 'package:flutter/material.dart';

class DetailTextWidget extends StatelessWidget {
  final String title;
  final String value;

  DetailTextWidget({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
