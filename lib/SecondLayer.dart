

// ignore: must_be_immutable
import 'package:custom_drawer/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

SecondLayerState secondLayerState;
class SecondLayer extends StatefulWidget {

  @override
  SecondLayerState createState() => SecondLayerState();

  // openTab() => createState().openTab();
}

class SecondLayerState extends State<SecondLayer> {
  double xoffSet = 0;
  double yoffSet = 0;
  bool isOpen = false;
  var height = 30;
  var width = 30;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    secondLayerState = this;
    return AnimatedContainer(
        transform: Matrix4Transform()
            .translate(x: xoffSet, y: yoffSet)
            .rotate(angle)
            .matrix4,
        duration: Duration(milliseconds: 550),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xFF4c41a3)),
        child: Column(
          children: [
            Row(
              children: [],
            )
          ],
        ));
  }

  void openTab() {
    setState(() {
      xoffSet = 122;
      yoffSet = 110;
      angle = -0.275;
      isOpen = true;
    });
  }

  void closeTab() {
    setState(() {
      xoffSet = 0;
      yoffSet = 0;
      angle = 0;
      isOpen = false;
    });
  }
}
