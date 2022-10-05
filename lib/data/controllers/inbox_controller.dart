import 'package:flutter/material.dart';
import 'package:meal_food_app/data/services/inbox_sevice.dart';
import 'package:meal_food_app/models/inbox.dart';

class InboxController extends ChangeNotifier {
  List<Inbox> _inboxes = <Inbox>[];
  List<Inbox> get inboxes => _inboxes;

  Future<List<Inbox>> getAllInboxes() async {
    try {
      _inboxes = await InboxService().getAllInbox();
      return _inboxes;
    } catch (error) {
      return Future.error(error.toString());
    }
  }
}
