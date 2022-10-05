import 'package:meal_food_app/models/notify.dart';

class NotificationService {
  Future<List<Notify>> getNotifications() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Notify> items = [
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: true,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: false,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: true,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: true,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: false,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: true,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: true,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: false,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: true,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: false,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: false,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: true,
        ),
        Notify(
          title: 'Your orders has been picked up',
          date: '1 hour ago',
          isRead: false,
        ),
      ];
      return items;
    });
  }
}
