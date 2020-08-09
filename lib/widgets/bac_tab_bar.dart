import 'package:flutter/material.dart';
import 'package:flutter_bac/config/Palette.dart';
import 'package:flutter_bac/config/constants.dart';

class BacTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const BacTabBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Palette.white,
                  width: 3.0,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Colors.blue,
                  width: 3.0,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map(
            (i, e) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  e,
                  color: i == selectedIndex ? Colors.white : Colors.black45,
                  size: 30.0,
                ),
                child: (i == selectedIndex)
                    ? FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(titleTabs[i]),
                      )
                    : null,
              ),
            ),
          )
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
