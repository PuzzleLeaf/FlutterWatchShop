import 'package:flutter/material.dart';

class RotateTextWidget extends StatelessWidget {
  final String text;
  final bool isSelected;

  RotateTextWidget({this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = isSelected
        ? TextStyle(fontWeight: FontWeight.w500, color: Colors.black)
        : TextStyle(color: Colors.grey);

    return Column(
      children: <Widget>[
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
        if (isSelected)
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 1.0,
            height: 20,
            color: Colors.red,
          )
      ],
    );
  }
}
