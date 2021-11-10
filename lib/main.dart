import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starter/l10n/l10n.dart';
import 'package:starter/screens/home.dart';
import 'package:starter/screens/landing.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: L10n.all,
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
