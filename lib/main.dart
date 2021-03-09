import "package:flutter/material.dart";
import 'package:shop_redux/shopping_cart.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ShoppingCart(),
    );
  }
}