import 'package:flutter/material.dart';
import 'package:justins_portfolio/screens/home/home_screen.dart';
import 'package:justins_portfolio/screens/main/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'custom_scroll_behavior.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Justins Portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        shadowColor: Colors.transparent,
        splashColor: Colors.transparent,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: bodyTextColor),
              bodyText2: TextStyle(color: bodyTextColor),
            ),
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoGlowBehavior(),
          child: child!,
        );
      },
      home: HomeScreen(),
    );
  }
}
