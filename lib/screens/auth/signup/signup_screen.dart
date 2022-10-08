import 'package:flutter/material.dart';
import 'package:meal_food_app/data/controllers/auth_controller.dart';
import 'package:meal_food_app/screens/auth/signup/signup_body.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController ctrl =
        Provider.of<AuthController>(context, listen: true);

    return Scaffold(body: signupBody(context, ctrl));
  }
}
