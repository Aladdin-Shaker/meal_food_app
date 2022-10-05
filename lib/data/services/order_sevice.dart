import 'package:meal_food_app/models/food.dart';
import 'package:meal_food_app/models/ingredients.dart';

class OrderService {
  Future<List<Food>> getOrders() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Food> foods = [
        Food(
            specialization: "Café Western Food",
            rating: 4.5,
            ratingCount: 120,
            image:
                "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
            title: "Minute by tuk tuk",
            ingredients: [
              Ingredients(price: 15, title: 'Beef Burger x1'),
              Ingredients(price: 14, title: 'Classic Burger x1'),
              Ingredients(price: 11, title: 'Cheese Chicken Burger x1'),
              Ingredients(price: 10, title: 'Chicken Legs Basket x11'),
              Ingredients(price: 13, title: 'French Fries Large x1'),
            ]),
      ];
      return foods;
    });
  }
}
