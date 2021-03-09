import 'package:flutter/material.dart';
import 'package:shop_redux/shopping_item.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:10,
      itemBuilder: (context,i)=>ShoppingItem(),
      
    );
  }
}