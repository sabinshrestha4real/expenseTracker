import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starter/utils/colors.dart';

class LandScapeMode extends StatelessWidget {
  const LandScapeMode({
    Key? key,
    required double screenWidth,
    required double screenHeight,
  })  : _screenWidth = screenWidth,
        _screenHeight = screenHeight,
        super(key: key);

  final double _screenWidth;
  final double _screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/tree.png',
              width: _screenWidth,
              height: _screenHeight / 1.1,
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text("Track Your",
                      style: GoogleFonts.poppins(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Expenses...",
                    style: GoogleFonts.poppins(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  // height: _screenHeight / 12.8,
                  // width: _screenWidth / 2.25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        primary: Colors.white),
                    onPressed: () {},
                    child: Text(
                      "Lets Go",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: backgroundColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
