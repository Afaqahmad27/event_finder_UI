import 'package:flutter/material.dart';
import '../../ViewModel/constants.dart';
import '../signUp.dart';

Widget PortraitMode(BuildContext context) {
  var size=MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints.expand(),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/img_1.jpg'),
        fit: BoxFit.cover,
        opacity: 0.77,
      ),
    ),
    padding: EdgeInsets.symmetric(horizontal: size.width*0.1, vertical: size.height*0.044),
    child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Find Interested\nEvent to Join',style: kTitle1,),
          SizedBox(height: size.height*0.02,),
          Text('We share all events like charity,\nworkshop, blood drive, etc',style: kLabel6,),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    top: size.height*0.06,
                    child: imgContainer(context, img: 'img_2.jpg', hValue: 0.1, wValue: 0.2)),
                Positioned(
                    top: size.height*0.091,
                    right: size.height*0.026,
                    child: imgContainer(context, img: 'img_3.jpg', hValue: 0.075, wValue: 0.15)),
                Positioned(
                    top: size.height*0.21,
                    right: size.height*0.14,
                    left: size.height*0.14,
                    child: imgContainer(context, img: 'img_4.jpg', hValue: 0.15, wValue: 0.29)),
                Positioned(
                    top: size.height*0.4,
                    right: size.height*0.026,
                    child: imgContainer(context, img: 'img_6.jpg', hValue: 0.09, wValue: 0.16)),
                Positioned(
                    top: size.height*0.44,
                    child: imgContainer(context, img: 'img_5.jpg', hValue: 0.09, wValue: 0.16)),
              ],
            ),
          ),
          Center(
            child: Container(
              width: double.infinity,
              child: RawMaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
              },
                child: Text('Register',style: kLabel6.copyWith(color: Colors.white, fontSize: 17),),
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                fillColor: Color(0xFF000000),
              ),
            ),
          ),
          SizedBox(height: size.height*0.015,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('already have an account? ',style: kLabel6,),
              MyTextBtn(context,text: 'Sign in')
            ],
          )
        ],
      ),
    ),
  );
}