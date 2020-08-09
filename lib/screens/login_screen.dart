import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        depth: 8,
        intensity: 0.65,
      ),
      child: Material(
        child: NeumorphicBackground(
          child: Scaffold(
            backgroundColor: Colors.white12,
            body: Stack(
              children: [
                Center(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(20),
                      ),
                      depth: 5,
                      intensity: 0.65,
                    ),
                    child: Container(
                      width: screen.width * 0.8,
                      height: screen.height * 0.8,
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 30.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NeumorphicText(
                            'Usuario',
                            textStyle: NeumorphicTextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.w700,
                            ),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              intensity: 0.7,
                              surfaceIntensity: 0.5,
                              depth: 2,
                              lightSource: LightSource.topLeft,
                            ),
                          ),
                          Neumorphic(
                            margin: EdgeInsets.only(
                              top: 13.0,
                            ),
                            style: NeumorphicStyle(
                              depth: NeumorphicTheme.embossDepth(context),
                              boxShape: NeumorphicBoxShape.stadium(),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 18),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration.collapsed(
                                  hintText: 'Username'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
