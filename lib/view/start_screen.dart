import 'package:flutter/material.dart';
import 'Landscape/landscape_start.dart';
import 'Portrait/portrait_start.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceStatus=MediaQuery.of(context).orientation;
    return Scaffold(
      body: deviceStatus == Orientation.portrait? PortraitMode(context) : LandscapeMode(context),
    );
  }
}




