import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/checkout_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.greyLight,
      appBar: appbarWidget(title: StringsManager.checkout),
      body: checkoutWidget(context),
    );
  }
}
