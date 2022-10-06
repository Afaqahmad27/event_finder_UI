import 'package:event_finder_app/ViewModel/constants.dart';
import 'package:event_finder_app/view/dashboard.dart';
import 'package:event_finder_app/view/signUp.dart';
import 'package:flutter/material.dart';

import 'Landscape/landscape_signin.dart';
import 'Portrait/portrait_signin.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final deviceStatus=MediaQuery.of(context).orientation;
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          title: Text('Sign In',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Poppins', fontSize: 18)),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: size.height*0.02, top: size.height*0.02, bottom: size.height*0.02),
              width: deviceStatus==Orientation.portrait?size.height*0.15: size.height*0.28,
              decoration: BoxDecoration(
                  color: Color(0xff030A34),
                  borderRadius: BorderRadius.circular(14)
              ),
              child: RawMaterialButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacementNamed('/signup');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));

                },
                child: Text('Sign Up',style: kTitle1.copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),),
              ),
            ),
          ],
        ),
        body:deviceStatus == Orientation.portrait? PortraitMode(context) : LandscapeMode(context)
    );

  }
}