import 'package:flutter/material.dart';
import 'package:meal_food_app/data/services/order_sevice.dart';
import 'package:meal_food_app/models/food.dart';

class OrderController extends ChangeNotifier {
  List<Food> _orders = <Food>[];
  List<Food> get orders => _orders;

  Future<List<Food>> getOrders() async {
    try {
      _orders = await OrderService().getOrders();
      return _orders;
    } catch (error) {
      return Future.error(error.toString());
    }
  }
}
