import 'package:flutter/material.dart';

import 'hexColorToFlutterColor.dart';

extension ColorUtil on BuildContext {
  Color dynamicColor({required int light, required int dark}) {
    return (Theme.of(this).brightness == Brightness.light)
        ? Color(light)
        : Color(dark);
  }

  Color dynamicColour({required Color light, required Color dark}) {
    return (Theme.of(this).brightness == Brightness.light) ? light : dark;
  }

  Color get brandColor1 =>
      dynamicColour(light: HexColor("#3662D4"), dark: HexColor("#000000"));

  Color get green =>
      dynamicColour(light: HexColor("#76C554"), dark: HexColor("#000000"));
  Color get greenSwitch =>
      dynamicColour(light: HexColor("#27AE60"), dark: HexColor("#000000"));
  Color get olivegreen =>
      dynamicColour(light: HexColor("#71974C"), dark: HexColor("#000000"));
  Color get grey =>
      dynamicColour(light: HexColor("#C0C0C0"), dark: HexColor("#000000"));

  Color get darkgrey =>
      dynamicColour(light: HexColor("#686868"), dark: HexColor("#000000"));
  Color get indicatorgrey =>
      dynamicColour(light: HexColor("#C4C4C4"), dark: HexColor("#000000"));
  Color get lightgrey =>
      dynamicColour(light: HexColor("#F4F4F4"), dark: HexColor("#000000"));
  Color get lightGreen =>
      dynamicColour(light: HexColor("#00800052"), dark: HexColor("#000000"));
  Color get darkGreen =>
      dynamicColour(light: HexColor("#006A00"), dark: HexColor("#000000"));
  Color get peach =>
      dynamicColour(light: HexColor("#E7A98A"), dark: HexColor("#000000"));

  Color get blue =>
      dynamicColour(light: HexColor("#3662D4"), dark: HexColor("#000000"));
  Color get lightblue =>
      dynamicColour(light: HexColor("#EFF3FF"), dark: HexColor("#000000"));
  Color get pink =>
      dynamicColour(light: HexColor("#F9AC89"), dark: HexColor("#000000"));
  Color get lavender =>
      dynamicColour(light: HexColor("#D5C2CA"), dark: HexColor("#000000"));
  Color get greyText =>
      dynamicColour(light: HexColor("#7B7B7B"), dark: HexColor("#000000"));
  Color get lightPurple =>
      dynamicColour(light: HexColor("#C785BA"), dark: HexColor("#000000"));
  Color get darkPurple =>
      dynamicColour(light: HexColor("#361830"), dark: HexColor("#000000"));
  Color get lightPeach =>
      dynamicColour(light: HexColor("#FCDCCC"), dark: HexColor("#000000"));

  Color get darkRed =>
      dynamicColour(light: HexColor("#9B0000"), dark: HexColor("#000000"));
  Color get amazonBlue =>
      dynamicColour(light: HexColor("#7195F3"), dark: HexColor("#000000"));
  Color get darkblue =>
      dynamicColour(light: HexColor("#1741AC"), dark: HexColor("#000000"));
  Color get lightRed =>
      dynamicColour(light: HexColor("#C600005C"), dark: HexColor("#000000"));
  Color get bottomsheetbutton =>
      dynamicColour(light: HexColor("#E1D4D9"), dark: HexColor("#000000"));
  Color get darkBrown =>
      dynamicColour(light: HexColor("#A66B00"), dark: HexColor("#000000"));

  Color get lightBrown =>
      dynamicColour(light: HexColor("#FFE0A8"), dark: HexColor("#000000"));

  Color get orange =>
      dynamicColour(light: HexColor("#F0893F"), dark: HexColor("#000000"));
  Color get greyBackGround =>
      dynamicColour(light: HexColor("#EFF0F2"), dark: HexColor("#000000"));
}
