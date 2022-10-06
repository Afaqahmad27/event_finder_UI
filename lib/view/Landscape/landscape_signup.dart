import 'package:flutter/material.dart';
import '../../ViewModel/constants.dart';
import '../login_page.dart';

Widget LandscapeMode(BuildContext context){
  var size=MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.only(top: size.height*0.15,left: 18, right: 18),
      height: size.height*1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Welcome New User!', style: kTitle1.copyWith(fontSize: 24),),
          SizedBox(height: size.height*0.003,),
          Text('Howdy, let\'s Now Register an Account',style: kTitle1.copyWith(fontSize: 18,fontWeight: FontWeight.w500),),
          userTextInput('Enter Full Name'),
          userEmailInput('Enter Email'),
          userPasswordInput('Enter Password'),
          SizedBox(height: size.height*0.03,),
          Center(child: authButton(context, "SignUp",NavigateTo: SignIn(),hVal: 0.13,wVal: 0.4))
        ],
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/img_4.jpg'),
              fit: BoxFit.cover,
              opacity: 0.45
          )
      ),
    ),
  );
}