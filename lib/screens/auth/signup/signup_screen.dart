import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView(
          padding: const EdgeInsets.all(AppPadding.p30),
          children: [
            Text(
              StringsManager.signup,
              style: getExtraBoldStyle(color: ColorManager.primary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppMarging.m20),
            Text(
              StringsManager.addYourDetailsSignup,
              style: getMeduimStyle(color: ColorManager.secondary),
            ),
            const SizedBox(height: AppMarging.m34),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              textAlign: TextAlign.start,
              enableSuggestions: true,
              decoration: InputDecoration(
                hintText: StringsManager.name,
              ),
            ),
            const SizedBox(height: AppMarging.m28),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              obscureText: true,
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.email,
              ),
            ),
            const SizedBox(height: AppMarging.m28),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              obscureText: true,
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.mobileNo,
              ),
            ),
            const SizedBox(height: AppMarging.m28),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              obscureText: true,
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.address,
              ),
            ),
            const SizedBox(height: AppMarging.m28),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              obscureText: true,
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.password,
              ),
            ),
            const SizedBox(height: AppMarging.m28),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              obscureText: true,
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.cpassword,
              ),
            ),
            const SizedBox(height: AppMarging.m28),
            ElevatedButton(
              onPressed: () {
                // send api request
              },
              child: Text(StringsManager.signup),
            ),
            const SizedBox(height: AppMarging.m28),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.loginRoute);
              },
              child: RichText(
                text: TextSpan(
                  text: StringsManager.areHaveAccount,
                  style: getMeduimStyle(
                    color: ColorManager.secondary,
                    fontSize: AppSize.s14,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: StringsManager.login,
                      style: getMeduimStyle(
                        color: ColorManager.main,
                        fontSize: AppSize.s14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
