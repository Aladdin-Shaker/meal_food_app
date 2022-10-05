import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          primary: false,
          padding: const EdgeInsets.all(AppPadding.p30),
          shrinkWrap: true,
          children: [
            CircleAvatar(
              backgroundImage: const NetworkImage(
                "https://st2.depositphotos.com/1006318/5909/v/600/depositphotos_59095205-stock-illustration-businessman-profile-icon.jpg",
              ),
              radius: 50,
              backgroundColor: ColorManager.primary,
              foregroundColor: ColorManager.white,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_sharp),
                ),
              ),
            ),
            const SizedBox(height: AppMarging.m20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.edit,
                  size: AppSize.s18,
                  color: ColorManager.main,
                ),
                Text(
                  StringsManager.editProfile,
                  style: getMeduimStyle(
                    color: ColorManager.main,
                    fontSize: FontSizes.s12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: AppMarging.m20),
            Text(
              'Hi there Aladdin',
              style: getBoldStyle(color: ColorManager.primary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppMarging.m10),
            InkWell(
              onTap: () {},
              child: Text(
                StringsManager.signout,
                style: getMeduimStyle(color: ColorManager.secondary),
                textAlign: TextAlign.center,
              ),
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
              child: Text(StringsManager.save),
            ),
            const SizedBox(height: AppMarging.m28),
          ],
        ),
      ),
    );
  }
}
