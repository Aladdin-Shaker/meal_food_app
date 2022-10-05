import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/otp_field_widget.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(AppPadding.p36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                StringsManager.weSentOtp,
                style: getExtraBoldStyle(color: ColorManager.primary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppMarging.m20),
              Text(
                StringsManager.otpMsg,
                style: getMeduimStyle(color: ColorManager.secondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppMarging.m96),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++) otpInputWidget(),
                ],
              ),
              const SizedBox(height: AppMarging.m28),
              ElevatedButton(
                onPressed: () {
                  // send api request
                  Navigator.pushReplacementNamed(
                      context, Routes.newPasswordRoute);
                },
                child: Text(StringsManager.next),
              ),
              const SizedBox(height: AppMarging.m28),
              InkWell(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    text: StringsManager.otpDidntRec,
                    style: getMeduimStyle(
                      color: ColorManager.secondary,
                      fontSize: AppSize.s14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: StringsManager.clickHr,
                        style: getMeduimStyle(
                          color: ColorManager.main,
                          fontSize: AppSize.s14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
