import 'package:flutter/material.dart';
import 'package:meal_food_app/config/font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: FontConstants.fontFamily,
  );
}

// thin style

TextStyle getThinStyle(
    {double fontSize = FontSizes.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.thin, color);
}

// extraLight style

TextStyle getExtralLightStyle({
  double fontSize = FontSizes.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.extraLight, color);
}

// extraLight style

TextStyle getLightStyle(
    {double fontSize = FontSizes.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// normal style

TextStyle getNormalStyle({
  double fontSize = FontSizes.s14,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.normal, color);
}

// meduim style

TextStyle getMeduimStyle({
  double fontSize = FontSizes.medium,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.meduim, color);
}

// semi bold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSizes.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}

// bold style

TextStyle getBoldStyle(
    {double fontSize = FontSizes.s22, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

// extra bold style

TextStyle getExtraBoldStyle(
    {double fontSize = FontSizes.s26, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.extraBold, color);
}

// black style

TextStyle getBlackStyle(
    {double fontSize = FontSizes.s30, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.black, color);
}
