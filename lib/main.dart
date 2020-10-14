import 'package:custom_drawer/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CustomDrawerApp());
}

class CustomDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.solwayTextTheme(
          
            Theme.of(context).textTheme,
          )),
      home: CustomDrawer(),
    );
  }
}