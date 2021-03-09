import 'package:flutter/material.dart';
import 'package:shop_redux/model/cart_item.dart';

import 'actions.dart';

List<CartItem> cartItemReducer(List<CartItem> items, dynamic action) {
  if (action is AddItemAction) {
    return addItem(items, action);
  } else if (action is ToggleStateAction) {
    return toggleItem(items, action);
  } else if (action is DelateItemAction) {
    return delateItem(items, action);
  }
  return items;
}

List<CartItem> addItem(List<CartItem> items, AddItemAction action) {
  return List.from(items)..add(action.item);
}

List<CartItem> toggleItem(List<CartItem> items, ToggleStateAction action) {
  List<CartItem> newlist =
      items.map((e) => e.name == action.item.name ? action.item : e).toList();
  return newlist;
}

List<CartItem> delateItem(List<CartItem> items, DelateItemAction action) {
  return List.from(items)..remove(action.item);
}
