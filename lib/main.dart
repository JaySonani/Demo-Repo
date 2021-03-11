import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:jaysonani_dev/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JaySonani.dev',
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lato'),
    );
  }
}
