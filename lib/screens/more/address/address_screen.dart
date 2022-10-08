import 'package:flutter/material.dart';

import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/map_widget.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: StringsManager.changeAddress),
      body: mapWidget(context),
    );
  }
}
