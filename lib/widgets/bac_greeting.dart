import 'package:flutter/material.dart';
import 'package:flutter_bac/config/Palette.dart';
import 'package:flutter_bac/widgets/weather_avatar.dart';

class BacGreeting extends StatelessWidget {
  const BacGreeting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          WeatherAvatar(
            imageUrl: 'assets/images/sky.jpg',
          ),
          SizedBox(width: 6.0),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buenos Dias',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Palette.white,
                    fontWeight: FontWeight.w700,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Luis Cardoza Bird',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Palette.white,
                    fontWeight: FontWeight.w300,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
