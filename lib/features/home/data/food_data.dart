import 'food_data_model.dart';

class FoodData {
  static const List<FoodItem> foods = [
    FoodItem(
      id: '1',
      name: 'Margherita Pizza',
      price: 12.99,
      imageUrl: 'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?w=300&h=200&fit=crop',
      description: 'Classic pizza with tomato sauce, mozzarella, and basil',
    ),
    FoodItem(
      id: '2',
      name: 'Chicken Burger',
      price: 9.99,
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300&h=200&fit=crop',
      description: 'Juicy grilled chicken breast with lettuce and tomato',
    ),
    FoodItem(
      id: '3',
      name: 'Caesar Salad',
      price: 8.50,
      imageUrl: 'https://images.unsplash.com/photo-1551248429-40975aa4de74?w=300&h=200&fit=crop',
      description: 'Fresh romaine lettuce with Caesar dressing and croutons',
    ),
    FoodItem(
      id: '4',
      name: 'Spaghetti Carbonara',
      price: 11.99,
      imageUrl: 'https://images.unsplash.com/photo-1621996346565-e3dbc353d2e5?w=300&h=200&fit=crop',
      description: 'Creamy pasta with bacon, eggs, and parmesan cheese',
    ),
    FoodItem(
      id: '5',
      name: 'Fish Tacos',
      price: 10.50,
      imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=300&h=200&fit=crop',
      description: 'Grilled fish with cabbage slaw and spicy mayo',
    ),
    FoodItem(
      id: '6',
      name: 'Chocolate Brownie',
      price: 6.99,
      imageUrl: 'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=300&h=200&fit=crop',
      description: 'Rich chocolate brownie with vanilla ice cream',
    ),
  ];
}