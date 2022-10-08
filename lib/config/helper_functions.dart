import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/screens/menu/triangle_clipper.dart';

class HelperFunctions {
  static String? inputValidator(String type, String value) {
    switch (type) {
      case "text":
        if (value.isEmpty) {
          return 'Please enter your name';
        } else if (value.length <= 2) {
          return 'Please enter the name at least 2 characters';
        } else if (value.length > 50) {
          return 'Please enter the name at most 50 characters';
        }
        break;
      case "name":
        if (value.isEmpty) {
          return 'Please enter your name';
        } else if (value.length <= 2) {
          return 'Please enter the name at least 2 characters';
        } else if (value.length > 50) {
          return 'Please enter the name at most 50 characters';
        }
        break;
      case "email":
        if (value.isEmpty) {
          return 'Please enter your email';
        } else if (!_isEmailValid(value)) {
          return 'Please enter a valid email address';
        }
        break;
      case "phone":
        if (value.isEmpty) {
          return 'Please enter your phone number';
        } else if (!_isPhoneValid(value)) {
          return 'Please enter a valid phone number';
        }
        break;
      case "password":
        if (value.isEmpty) {
          return 'Please enter your password';
        } else if (value.length <= 2) {
          return 'Please enter the password at least 2 characters';
        } else if (!_isPasswordValid(value)) {
          return 'Please enter a password contains capital and small characters & numbers';
        }
        break;

      default:
        return null;
    }
    return null;
  }

  static bool _isEmailValid(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  static bool _isPhoneValid(String phone) {
    return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(phone);
  }

  static bool _isPasswordValid(String phone) {
    return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(phone);
  }

  static BorderRadius buildMenueImageBorder(int index) {
    if (index == 0) {
      return BorderRadius.circular(AppSize.s50);
    } else if (index == 1) {
      return const BorderRadius.all(Radius.circular(AppSize.s20));
    } else if (index == 2) {
      return const BorderRadius.all(Radius.circular(AppSize.s50));
    } else if (index == 3) {
      return const BorderRadius.all(Radius.circular(AppSize.s20));
    } else {
      // default
      return BorderRadius.circular(AppSize.s50);
    }
  }

  static Widget buildMenuImgShape(String image, int index) {
    switch (index) {
      case 0:
        return Container(
          width: SizeManager.screenWidth / 6,
          height: SizeManager.screenWidth / 6,
          decoration: BoxDecoration(
            borderRadius: HelperFunctions.buildMenueImageBorder(index),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        );
      case 1:
        return Container(
          width: SizeManager.screenWidth / 6,
          height: SizeManager.screenWidth / 6,
          decoration: BoxDecoration(
            borderRadius: HelperFunctions.buildMenueImageBorder(index),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        );
      case 2:
        return ClipPath(
          clipBehavior: Clip.antiAlias,
          clipper: TriangleClipper(),
          child: Container(
            width: SizeManager.screenWidth / 4,
            height: SizeManager.screenWidth / 6,
            decoration: BoxDecoration(
              borderRadius: HelperFunctions.buildMenueImageBorder(index),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      case 3:
        return Transform.rotate(
          angle: pi / 4,
          child: Container(
            width: SizeManager.screenWidth / 6,
            height: SizeManager.screenWidth / 6,
            decoration: BoxDecoration(
              borderRadius: HelperFunctions.buildMenueImageBorder(index),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

      default:
        return Container(
          width: SizeManager.screenWidth / 6,
          height: SizeManager.screenWidth / 6,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        );
    }
  }
}
