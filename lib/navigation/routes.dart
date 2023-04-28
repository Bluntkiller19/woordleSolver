import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woordle_solver/main_page/main_view.dart';


class Routes {
  static const String mainView = '/';

  static Map<String, Widget Function(Object? params)> map = {
    mainView: (Object? params) => const MainView(),
  };
}