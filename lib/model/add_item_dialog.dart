import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_redux/model/cart_item.dart';
import 'package:shop_redux/redux/actions.dart';

class AddItemDialog extends StatefulWidget {
  @override
  _AddItemDialogState createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<List<CartItem>, OnItemAddedCallback>(
        builder: (context,callback)=>AlertDialog(
      title: Text("Add Item"),
      contentPadding: EdgeInsets.all(15),
      content: Row(
        children: [
          Expanded(
              child: TextField(
            decoration: InputDecoration(
              labelText: "Item Name",
              hintText: "Somthing",
            ),
            autofocus: true,
          ))
        ],
      ),
      actions: <Widget>[
        // ignore: deprecated_member_use
        FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("Cancel")),
        // ignore: deprecated_member_use
        FlatButton(
            onPressed: () => Navigator.of(context).pop(), child: Text("Add"))
      ],
    ),
        converter: (store) => (itemName) => store.dispatch(AddItemAction(CartItem(name:itemName,checked: false))));
  
  }
}

typedef OnItemAddedCallback = Function(String itemName);
