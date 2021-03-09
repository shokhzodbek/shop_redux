import 'package:shop_redux/model/cart_item.dart';

class AddItemAction {
  final CartItem item;
  AddItemAction(this.item);
}

class ToggleStateAction {
  final CartItem item;
  ToggleStateAction(this.item);
}

class DelateItemAction {
  final CartItem item;
  DelateItemAction(this.item);
}
