import 'package:flutter/material.dart';
import '../../ViewModel/constants.dart';
import '../login_page.dart';

Widget PortraitMode(BuildContext context){
  var size=MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.only(left: 18, right: 18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Welcome New User!', style: kTitle1.copyWith(fontSize: 20),),
        SizedBox(height: size.height*0.003,),
        Text('Howdy, let\'s Now Register an Account',style: kTitle1.copyWith(fontSize: 16.2,fontWeight: FontWeight.w500),),
        userTextInput('Enter Full Name'),
        userEmailInput('Enter Email'),
        userPasswordInput('Enter Password'),
        SizedBox(height: size.height*0.03,),
        Center(child: authButton(context, "SignUp",NavigateTo: SignIn()))
      ],
    ),
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/img_4.jpg'),
            fit: BoxFit.cover,
            opacity: 0.45
        )
    ),
  );
}