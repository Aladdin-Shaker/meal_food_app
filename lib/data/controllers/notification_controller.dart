import 'package:flutter/material.dart';
import 'package:meal_food_app/data/services/notification_sevice.dart';
import 'package:meal_food_app/models/notify.dart';

class NotificationController extends ChangeNotifier {
  List<Notify> _notifications = <Notify>[];
  List<Notify> get menuItems => _notifications;

  Future<List<Notify>> getMenu() async {
    try {
      _notifications = await NotificationService().getNotifications();
      return _notifications;
    } catch (error) {
      return Future.error(error.toString());
    }
  }
}
