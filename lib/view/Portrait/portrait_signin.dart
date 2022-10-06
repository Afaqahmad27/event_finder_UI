import 'package:flutter/material.dart';

import '../../ViewModel/constants.dart';
import '../dashboard.dart';

Widget PortraitMode(BuildContext context){
  var size=MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.only(left: 18, right: 18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Welcome Back!', style: kTitle1.copyWith(fontSize: 20),),
        SizedBox(height: size.height*0.003,),
        Text('Howdy, let\'s authenticate',style: kTitle1.copyWith(fontSize: 17, fontWeight: FontWeight.w500),),
        userTextInput('Username'),
        userPasswordInput('Password'),
        RawMaterialButton(
          onPressed: () {},
          child: Text('Forgot Password?',),
        ),
        Center(child: authButton(context, "Login",NavigateTo: DashBoard()))
      ],
    ),
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.grey.shade100,
        image: DecorationImage(
            image: AssetImage('images/img_5.jpg'),
            fit: BoxFit.cover,
            opacity: 0.45
        )
    ),
  );
}