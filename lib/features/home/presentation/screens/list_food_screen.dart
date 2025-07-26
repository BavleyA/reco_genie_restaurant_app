import 'package:flutter/material.dart';

import '../../data/food_data.dart';
import '../../data/food_data_model.dart';
import '../widgets/food_item_card.dart';

class FoodListScreen extends StatelessWidget {
  final List<FoodItem> cartItems;
  final Function(FoodItem) onAddToCart;
  final Function(FoodItem) onRemoveFromCart;

  const FoodListScreen({
    super.key,
    required this.cartItems,
    required this.onAddToCart,
    required this.onRemoveFromCart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: FoodData.foods.length,
        itemBuilder: (context, index) {
          final food = FoodData.foods[index];
          final isInCart = cartItems.contains(food);

          return FoodItemCart(food: food, isInCart: isInCart, onAddToCart: onAddToCart);
        },
      ),
    );
  }
}

