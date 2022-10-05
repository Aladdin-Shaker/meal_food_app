import 'package:meal_food_app/models/inbox.dart';

class InboxService {
  Future<List<Inbox>> getAllInbox() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Inbox> items = [
        Inbox(
          title: '1 Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: true,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: false,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: false,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: true,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: true,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: false,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: true,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: false,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: true,
        ),
        Inbox(
          title: 'Your orders has been picked up',
          body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
          date: '1 hour ago',
          isRead: false,
        ),
      ];
      return items;
    });
  }
}
