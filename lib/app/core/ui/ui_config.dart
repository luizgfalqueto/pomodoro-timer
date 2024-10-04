import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static String get title => 'Pomodore Timer';

  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xFF527e5b),
        primaryColorDark: const Color(0xff689F38),
        primaryColorLight: const Color(0xff7ba37e),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xffA8CE4B)),
        scaffoldBackgroundColor: const Color(0xFF527e5b),
        fontFamily: 'Rubik'
      );
}
