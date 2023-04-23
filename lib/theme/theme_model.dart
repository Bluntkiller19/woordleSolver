import 'package:flutter/material.dart';
import 'package:trivia_quize/src/themes/themes.dart';

enum ThemeType{
  original,
}

class ThemeModel extends ChangeNotifier{
  ThemeData currentTheme = original;
  final ThemeType _themeType = ThemeType.original;
}