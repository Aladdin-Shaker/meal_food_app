import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/screens/gettingStart/body.dart';

class GettingStartScreen extends StatelessWidget {
  const GettingStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeManager().init(context);
    return Scaffold(body: body(context));
  }
}
