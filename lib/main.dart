import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starter/screens/home.dart';
import 'package:starter/screens/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => Landing(), '/home': (context) => Home()},
      debugShowCheckedModeBanner: false,
      title: 'Starter',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF7DCEAE),
        primaryColor: Color(0xFF7DCEAE),
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme,)
      ),
    );
  }
}
