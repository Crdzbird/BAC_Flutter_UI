import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bac/screens/navigation_screen.dart';

Route generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case 'navigationScreen':
      return MaterialPageRoute(builder: (context) => NavigationScreen());
      break;
    default:
      return MaterialPageRoute(builder: (context) => NavigationScreen());
  }
}
