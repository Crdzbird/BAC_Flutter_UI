import 'package:flutter/material.dart';
import 'package:flutter_bac/config/Palette.dart';
import 'package:flutter_bac/model/user.dart';
import 'package:flutter_bac/utils/svg_icons.dart';
import 'package:flutter_bac/widgets/bac_greeting.dart';
import 'package:flutter_bac/widgets/bac_tab_bar.dart';

class BacAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const BacAppBar({
    Key key,
    this.currentUser,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: BoxDecoration(
        color: Palette.secondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Row(
            children: [
              Icon(
                SvgIcons.bac,
                color: Palette.white,
                size: screen.height * 0.05,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BAC',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -1.2,
                    ),
                  ),
                  Text(
                    'CREDOMATIC',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -1.2,
                    ),
                  ),
                ],
              ),
            ],
          )),
          Container(
            height: double.infinity,
            width: screen.width * 0.6,
            alignment: Alignment.center,
            child: BacTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BacGreeting(),
                SizedBox(width: 12.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
