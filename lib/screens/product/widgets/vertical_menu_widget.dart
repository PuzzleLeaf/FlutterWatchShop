import 'package:flutter/material.dart';
import 'package:watch_shop/model/data.dart';
import 'package:watch_shop/widgets/rotate_text_widget.dart';

class VerticalMenuWidget extends StatelessWidget {
  final double width;
  final double height;

  VerticalMenuWidget({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.2),
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 50,
            ),
            child: CircleAvatar(
              child: Image.network(profileImg),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RotateTextWidget(
                  text: 'Top Pick',
                  isSelected: true,
                ),
                RotateTextWidget(
                  text: 'Top Pick',
                ),
                RotateTextWidget(
                  text: 'Top Pick',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Icon(Icons.more_vert, size: 35,),
          ),
        ],
      ),
    );
  }
}
