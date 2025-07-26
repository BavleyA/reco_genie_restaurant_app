import 'package:flutter/material.dart';

import 'features/cart/presentation/screens/cart_screen.dart';
import 'features/home/data/food_data_model.dart';
import 'features/home/presentation/screens/list_food_screen.dart';

class NavigationBarMenu extends StatefulWidget {
  const NavigationBarMenu({super.key});

  @override
  State<NavigationBarMenu> createState() => _NavigationBarMenuState();
}

class _NavigationBarMenuState extends State<NavigationBarMenu> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  // Shared cart state
  List<FoodItem> cartItems = [];

  // Cart methods
  void addToCart(FoodItem food) {
    if (!cartItems.contains(food)) {
      setState(() {
        cartItems.add(food);
      });
    }
  }

  void removeFromCart(FoodItem food) {
    setState(() {
      cartItems.remove(food);
    });
  }

  void clearCart() {
    setState(() {
      cartItems.clear();
    });
  }

  double getTotalPrice() {
    double total = 0;
    for (var item in cartItems) {
      total += item.price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: [
          // Pass cart methods to FoodListScreen
          FoodListScreen(
            cartItems: cartItems,
            onAddToCart: addToCart,
            onRemoveFromCart: removeFromCart,
          ),

          // Pass cart data to CartScreen
          CartScreen(
            cartItems: cartItems,
            onRemove: removeFromCart,
            onClear: clearCart,
            totalPrice: getTotalPrice(),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        height: 70,
        elevation: 0,
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        destinations: [
          const NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          NavigationDestination(
              icon: Stack(
                children: [
                  const Icon(Icons.shopping_cart),
                  if (cartItems.isNotEmpty)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: Text(
                          '${cartItems.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              ),
              label: "Cart"
          ),
        ],
      ),
    );
  }
}
