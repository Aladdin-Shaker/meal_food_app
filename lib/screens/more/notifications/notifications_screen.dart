import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';

import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/data/controllers/notification_controller.dart';
import 'package:meal_food_app/models/notify.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/loaders/notification_card_loading.dart';
import 'package:meal_food_app/widgets/notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  final NotificationController menuCtrl = NotificationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: StringsManager.notifications),
      body: FutureBuilder<List<Notify>>(
        future: menuCtrl.getMenu(),
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
                  Notify item = snapshot.data![index];
                  return notificationCard(item);
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
