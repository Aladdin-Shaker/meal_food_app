import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/screens/auth/resetPassword/rest_password_body.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(
        isActions: false,
        iconColor: ColorManager.primary,
      ),
      body: resetPasswordBody(context),
    );
  }
}
