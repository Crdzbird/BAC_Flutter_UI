import 'package:flutter/material.dart';
import 'package:flutter_bac/screens/login_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final List<IconData> icons = const [
  FontAwesomeIcons.home,
  MdiIcons.swapVerticalBold,
  FontAwesomeIcons.virus,
  FontAwesomeIcons.solidCommentDots,
  FontAwesomeIcons.mapMarkerAlt,
  FontAwesomeIcons.car,
  FontAwesomeIcons.lifeRing
];

final List<String> titleTabs = const [
  'Home',
  'Tipo de Cambio',
  'Informacion Covid-19',
  'Contactenos',
  'Ubicanos',
  'Compass',
  'Problemas con el app'
];

final List<Widget> screens = [
  LoginScreen(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
];
