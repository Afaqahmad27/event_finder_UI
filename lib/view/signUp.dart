
import 'package:flutter/material.dart';

import 'Landscape/landscape_signup.dart';
import 'Portrait/portrait_signup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceStatus=MediaQuery.of(context).orientation;
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          title: Text('Sign Up',
              style: TextStyle(
                  color: Colors.black, fontSize: 18)),
        ),
        body: deviceStatus==Orientation.portrait? PortraitMode(context): LandscapeMode(context),
    );

  }
}
