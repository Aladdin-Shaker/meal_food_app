import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/data/controllers/inbox_controller.dart';
import 'package:meal_food_app/models/inbox.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/inbox_card.dart';
import 'package:meal_food_app/widgets/loaders/notification_card_loading.dart';

class InboxScreen extends StatelessWidget {
  InboxScreen({Key? key}) : super(key: key);

  final InboxController ctrl = InboxController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: StringsManager.inbox),
      body: FutureBuilder<List<Inbox>>(
        future: ctrl.getAllInboxes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SizedBox(
              width: SizeManager.screenWidth,
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  Inbox item = snapshot.data![index];
                  return inboxCard(item);
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }

          // By default, show a loading spinner.
          return notificationCardLoading();
        },
      ),
    );
  }
}
