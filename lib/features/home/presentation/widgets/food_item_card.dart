import 'package:flutter/material.dart';

import '../../data/food_data_model.dart';

class FoodItemCart extends StatelessWidget {
  const FoodItemCart({
    super.key,
    required this.food,
    required this.isInCart,
    required this.onAddToCart,
  });

  final FoodItem food;
  final bool isInCart;
  final Function(FoodItem p1) onAddToCart;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                food.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey[300],
                    child: const Icon(Icons.food_bank, size: 40),
                  );
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    food.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$${food.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(

              onPressed: isInCart ? null : () => onAddToCart(food),
              icon: Icon(isInCart ? Icons.check : Icons.add_shopping_cart),
              // label: Text(isInCart ? 'Added' : 'Add'),
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: isInCart ? Colors.white : Colors.orange,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
