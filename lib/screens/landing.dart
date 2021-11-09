import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starter/responsive/landscape.dart';
import 'package:starter/responsive/potrait.dart';
import 'package:starter/utils/colors.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              return LandScapeMode(
                  screenWidth: _screenWidth, screenHeight: _screenHeight);
            } else
              return PotraitMode(
                  screenWidth: _screenWidth, screenHeight: _screenHeight);
          },
        ),
      ),
    );
  }
}
