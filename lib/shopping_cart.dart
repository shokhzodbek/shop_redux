import "package:flutter/material.dart";
import 'package:shop_redux/model/add_item_dialog.dart';
import 'package:shop_redux/model/cart_item.dart';
import 'package:shop_redux/shopping_list.dart';
import "package:redux/redux.dart";

class ShoppingCart extends StatelessWidget {
  final Store<List<CartItem>> store;

  const ShoppingCart({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: ShoppingList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openDialog(context),
      ),
    );
  }
}

_openDialog(BuildContext context) {
  showDialog(context: context, builder: (context) => AddItemDialog());
}
