import 'package:flutter/material.dart';
import 'package:flutter_bac/config/constants.dart';
import 'package:flutter_bac/utils/responsive.dart';
import 'package:flutter_bac/widgets/bac_app_bar.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        DefaultTabController(
          length: icons.length,
          child: Scaffold(
            appBar: Responsive.isDesktop(context)
                ? PreferredSize(
                    preferredSize: Size(screenSize.width, 100),
                    child: BacAppBar(
                      icons: icons,
                      onTap: (index) => setState(() => _selectedIndex = index),
                      selectedIndex: _selectedIndex,
                    ),
                  )
                : null,
            body: IndexedStack(
              index: _selectedIndex,
              children: screens,
            ),
          ),
        ),
      ],
    );
  }
}
