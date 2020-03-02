import 'package:flutter/material.dart';

class CircleIconWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  CircleIconWidget({this.icon, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: size * 2,
      ),
    );
  }
}
