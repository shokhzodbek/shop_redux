import "package:flutter/material.dart";
import 'package:shop_redux/model/cart_item.dart';
import 'package:shop_redux/redux/reducers.dart';
import 'package:shop_redux/shopping_cart.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'redux/reducers.dart';
import 'package:redux/redux.dart';

void main() {
  // ignore: deprecated_member_use
  final store = Store<List<CartItem>>(cartItemReducer, initialState: List());
  runApp(ShoppingApp(store:store));
}

class ShoppingApp extends StatelessWidget {
  final Store<List<CartItem>> store;

  const ShoppingApp({Key key, this.store}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
          child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: ShoppingCart(store:store),
      ),
    );
  }
}
