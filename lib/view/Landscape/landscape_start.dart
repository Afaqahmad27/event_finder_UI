import 'package:flutter/material.dart';
import '../../ViewModel/constants.dart';
import '../signUp.dart';
Widget LandscapeMode(BuildContext context) {
  var size=MediaQuery.of(context).size;
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/img_1.jpg'),
        fit: BoxFit.cover,
        opacity: 0.77,
      ),
    ),
    padding: EdgeInsets.symmetric(horizontal: size.width*0.09, vertical: size.height*0.044),
    child: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: size.height*1.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Find Interested\nEvent to Join',style: kTitle1.copyWith(fontSize: 26),),
              SizedBox(height: size.height*0.02,),
              Text('We share all events like charity,\nworkshop, blood drive, etc',style: kLabel6.copyWith(fontSize: 16),),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Positioned(
                        top: size.height*0.06,
                        child: imgContainer(context, img: 'img_2.jpg', hValue: 0.23, wValue: 0.12)),
                    Positioned(
                        top: size.height*0.091,
                        right: size.height*0.026,
                        child: imgContainer(context, img: 'img_3.jpg', hValue: 0.21, wValue: 0.1)),
                    Positioned(
                        top: size.height*0.26,
                        right: size.height*0.6,
                        child: imgContainer(context, img: 'img_4.jpg', hValue: 0.28, wValue: 0.16)),
                    Positioned(
                        top: size.height*0.52,
                        right: size.height*0.026,
                        child: imgContainer(context, img: 'img_6.jpg', hValue: 0.18, wValue: 0.1)),
                    Positioned(
                        top: size.height*0.59,
                        child: imgContainer(context, img: 'img_5.jpg', hValue: 0.22, wValue: 0.13)),
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.height*0.16),
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
                  Text('already have an account? ',style: kLabel6.copyWith(fontSize: 15),),
                  MyTextBtn(context,text: 'Sign in')
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}