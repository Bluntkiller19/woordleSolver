import 'package:flutter/material.dart';
import 'package:woordle_solver/navigation/routes.dart';

class RouteBuilder{
  static Route<dynamic> generateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => Routes.map[settings.name]!(settings.arguments),
    );
  }
}