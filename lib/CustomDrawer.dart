import 'package:custom_drawer/FirstLayer.dart';
import 'package:custom_drawer/HomePage.dart';
import 'package:custom_drawer/SecondLayer.dart';
import 'package:custom_drawer/ThirdLayer.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FirstLayer(),
          SecondLayer(),
          ThirdLayer(),
          HomePage(),
        ],
      ),
    );
  }
}

