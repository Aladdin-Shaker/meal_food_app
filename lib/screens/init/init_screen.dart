import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';

import 'package:meal_food_app/data/controllers/init_controller.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/bottom_navbar_widget.dart';
import 'package:provider/provider.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    SizeManager().init(context);

    final ctrl = Provider.of<InitController>(context, listen: true);
    return Scaffold(
      appBar: appbarWidget(title: ctrl.appbarTitle),
      body: ctrl.getCurrentPage,
      bottomNavigationBar: bottomNavBarWidget(ctrl),
    );
  }
}
