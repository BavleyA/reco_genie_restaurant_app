import 'package:flutter/material.dart';

import '../../features/home/data/food_data.dart';
import '../../features/home/data/food_data_model.dart';

class CartService extends ChangeNotifier {
  final List<FoodItem> _items = [];

  List<FoodItem> get items => _items;

  int get totalItems => _items.length;

  double get totalPrice {
    double total = 0;
    for (var item in _items) {
      total += item.price;
    }
    return total;
  }

  void addItem(FoodItem foodItem) {
    _items.add(foodItem);
    notifyListeners();
  }

  void removeItem(FoodItem foodItem) {
    _items.remove(foodItem);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  bool isInCart(FoodItem foodItem) {
    return _items.contains(foodItem);
  }
}