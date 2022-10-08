import 'package:flutter/material.dart';

import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/helper_functions.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/data/controllers/auth_controller.dart';

SafeArea signupBody(BuildContext context, AuthController ctrl) {
  final formKey = GlobalKey<FormState>();

  return SafeArea(
    child: Form(
      autovalidateMode: AutovalidateMode.always,
      key: formKey,
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
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppMarging.m34),
          TextFormField(
            // onSaved: (newValue) {
            //   print('onSaved ===> $newValue');
            // },
            // onChanged: (value) {
            //   String? validation =
            //       HelperFunctions.inputValidator('name', value);
            //   if (validation == null &&
            //       ctrl.errors.contains(StringsManager.name)) {
            //     ctrl.errors.remove(StringsManager.name);
            //   }
            // },

            validator: (value) {
              String? validation =
                  HelperFunctions.inputValidator('name', value!);
              if (validation != null &&
                  !ctrl.errors.contains(StringsManager.name)) {
                ctrl.errors.add(validation);
                return validation;
              }
              return null;
            },

            keyboardType: TextInputType.name,
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
              // if (formKey.currentState!.validate()) {
              //   // If the form is valid, display a snackbar. In the real world,
              //   // you'd often call a server or save the information in a database.
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('Processing Data')),
              //   );
              // }
              Navigator.pushReplacementNamed(context, Routes.initRoute);
            },
            child: Text(StringsManager.signup),
          ),
          const SizedBox(height: AppMarging.m28),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.loginRoute);
            },
            child: RichText(
              textAlign: TextAlign.center,
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
