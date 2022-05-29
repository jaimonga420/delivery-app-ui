import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/home_screen.dart';
import '../screens/my_parcel_screen.dart';
import '../screens/send_parcel_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFCE00),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        unselectedWidgetColor: const Color(0x50333333),
        shadowColor: const Color(0xFFe6e6e6).withOpacity(0.5),
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
              color: const Color(0xff111111),
              fontSize: 24,
              fontWeight: FontWeight.bold),
          headline2: GoogleFonts.poppins(
              color: const Color(0xff111111),
              fontSize: 20,
              fontWeight: FontWeight.w600),
          headline3: GoogleFonts.poppins(
              color: const Color(0xff111111),
              fontSize: 16,
              fontWeight: FontWeight.bold),
          headline4: GoogleFonts.poppins(
              color: const Color(0xff111111),
              fontSize: 12,
              fontWeight: FontWeight.bold),
          headline5: GoogleFonts.poppins(
              color: const Color(0xff111111),
              fontSize: 12,
              fontWeight: FontWeight.w500),
          headline6: GoogleFonts.poppins(
              color: Theme.of(context).unselectedWidgetColor,
              fontSize: 10,
              fontWeight: FontWeight.w500),
          bodyText1: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: GoogleFonts.poppins(
              color: const Color(0xff111111),
              fontSize: 9,
              fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomeScreen(),
      routes: {
        '/homescreen': (context) => const HomeScreen(),
        '/myparcel': (context) => const MyParcelScreen(),
        '/sendparcel': (context) => const SendParcelScreen(),
      },
    );
  }
}
