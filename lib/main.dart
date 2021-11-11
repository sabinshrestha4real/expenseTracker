import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:starter/l10n/l10n.dart';
import 'package:starter/screens/home.dart';
import 'package:starter/screens/landing.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'models/provider/translate.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Translate(),
        builder: (context, child) {
          final localProvider = Provider.of<Translate>(context);
          return MaterialApp(
            locale: localProvider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: [
              AppLocalizations.delegate, // Add this line
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
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
        });
  }
}
