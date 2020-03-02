import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_shop/screens/product/product_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Watch Shop App',
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}
