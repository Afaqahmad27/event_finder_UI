import 'package:flutter/material.dart';
import '../../ViewModel/constants.dart';
import '../dashboard.dart';

Widget LandscapeMode(BuildContext context){
  var size=MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.only(top: size.height*0.15,left: 18, right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Welcome Back!', style: kTitle1.copyWith(fontSize: 24),),
          SizedBox(height: size.height*0.003,),
          Text('Howdy, let\'s authenticate',style: kTitle1.copyWith(fontSize: 18, fontWeight: FontWeight.w500),),
          userTextInput('Username'),
          userPasswordInput('Password'),
          RawMaterialButton(
            onPressed: () {},
            child: Text('Forgot Password?',),
          ),
          Center(child: authButton(context,"Login",hVal: 0.13,wVal: 0.4,NavigateTo: DashBoard()))
        ],
      ),
      height: size.height*1.3,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          image: DecorationImage(
              image: AssetImage('images/img_5.jpg'),
              fit: BoxFit.cover,
              opacity: 0.45
          )
      ),
    ),
  );
}