import 'package:flutter/material.dart';
import 'package:flutter_bac/config/Palette.dart';
import 'package:flutter_bac/config/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BAC UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Palette.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'navigationScreen',
      onGenerateRoute: generateRoutes,
    );
  }
}
