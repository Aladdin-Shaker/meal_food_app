import 'package:flutter/material.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/more_card.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        primary: true,
        padding: const EdgeInsets.all(AppPadding.p20),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        children: [
          moreCard(
            context,
            Routes.paymentDetailsRoute,
            StringsManager.paymentDetails,
            const Icon(Icons.paypal_outlined),
            alert: '5',
          ),
          const SizedBox(height: AppSize.s20),
          moreCard(
            context,
            Routes.myOrdersRoute,
            StringsManager.myOrders,
            const Icon(Icons.shopping_bag),
          ),
          const SizedBox(height: AppSize.s20),
          moreCard(
            context,
            Routes.notificationsRoute,
            StringsManager.notifications,
            const Icon(Icons.notifications),
          ),
          const SizedBox(height: AppSize.s20),
          moreCard(
            context,
            Routes.inboxRoute,
            StringsManager.inbox,
            const Icon(Icons.mail),
            alert: '7',
          ),
          const SizedBox(height: AppSize.s20),
          moreCard(
            context,
            Routes.aboutRoute,
            StringsManager.about,
            const Icon(Icons.question_mark_rounded),
          ),
        ],
      ),
    );
  }
}
