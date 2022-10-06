
import 'package:flutter/material.dart';

import 'Landscape/landscape_home.dart';
import 'Portrait/portrait_home.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceStatus=MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: deviceStatus == Orientation.portrait? PortraitMode(context) : LandscapeMode(context),

    );
  }
}
