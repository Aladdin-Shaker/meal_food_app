import 'package:flutter/material.dart';
import 'package:meal_food_app/data/services/about_sevice.dart';
import 'package:meal_food_app/models/about.dart';

class AboutController extends ChangeNotifier {
  List<About> _notifications = <About>[];
  List<About> get menuItems => _notifications;

  Future<List<About>> getAbout() async {
    try {
      _notifications = await AboutService().getAbout();
      return _notifications;
    } catch (error) {
      return Future.error(error.toString());
    }
  }
}
