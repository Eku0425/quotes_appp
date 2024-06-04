import 'package:flutter/material.dart';
import 'package:quotes_appp/Radam_screen/HomePage.dart';


class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes =
  {
    '/': (context) => HomePageScren(),
  };
}