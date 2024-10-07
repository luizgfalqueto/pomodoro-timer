import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorDark => Theme.of(this).primaryColorDark;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  Color get whiteColor => const Color(0xFFF1F3F5);
  TextTheme get textTheme => Theme.of(this).textTheme;
  TextStyle get normalTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );
  TextStyle get largeTextStyle => const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );
}
