import 'package:flutter/material.dart';
import 'package:woordle_solver/theme/themes.dart';

enum ThemeType{
  original,
}

class ThemeModel extends ChangeNotifier{
  ThemeData currentTheme = original;
  final ThemeType _themeType = ThemeType.original;
}