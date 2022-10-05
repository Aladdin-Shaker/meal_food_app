import 'package:flutter/material.dart';
import 'package:meal_food_app/data/services/home_sevice.dart';
import 'package:meal_food_app/models/category.dart';
import 'package:meal_food_app/models/food.dart';
import 'package:meal_food_app/models/restaurant.dart';

class HomeController extends ChangeNotifier {
  List<Category> _categories = <Category>[];
  List<Category> get categories => _categories;

  List<Restaurant> _restaurants = <Restaurant>[];
  List<Restaurant> get restaurants => _restaurants;

  List<Food> _foods = <Food>[];
  List<Food> get foods => _foods;

  List<Food> _recentItems = <Food>[];
  List<Food> get recentItems => _recentItems;

  List<String> dropdownItems = [
    'Current Location ',
  ];

  Future<List<Category>> getCategories() async {
    try {
      _categories = await HomeService().getcategories();
      return _categories;
    } catch (error) {
      return Future.error(error.toString());
    }
  }

  Future<List<Restaurant>> getPopularResturents() async {
    try {
      _restaurants = await HomeService().getPopularRestaurants();
      return _restaurants;
    } catch (error) {
      return Future.error(error.toString());
    }
  }

  Future<List<Food>> getMostPopularFoods() async {
    try {
      _foods = await HomeService().getMostPopularFoods();
      return _foods;
    } catch (error) {
      return Future.error(error.toString());
    }
  }

  Future<List<Food>> getRecentItems() async {
    try {
      _recentItems = await HomeService().getRecentItems();
      return _recentItems;
    } catch (error) {
      return Future.error(error.toString());
    }
  }
}
