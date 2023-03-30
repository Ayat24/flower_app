import 'package:flutter/material.dart';
import 'package:flutter_appl/model/item.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  int price = 0;
  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }
}
