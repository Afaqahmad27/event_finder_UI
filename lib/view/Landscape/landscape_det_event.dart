import 'package:event_finder_app/ViewModel/card_data.dart';
import 'package:flutter/material.dart';
import '../../ViewModel/constants.dart';

Widget LandscapeMode(BuildContext context, {required CardData data}){
  String value = data.leftUser.toString();
  int userLeft = int.parse(value);
  userLeft = ++userLeft;
  var size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.85,
          child: Stack(
            children: [
              Ink.image(
                image: AssetImage('images/${data.img}'),
                fit: BoxFit.cover,
              ),
              Positioned(
                  top: size.height * 0.15,
                  left: size.height * 0.035,
                  child: Text(
                    '${data.date}',
                    style:
                    kLabel6.copyWith(color: Colors.white, fontSize: size.height*0.055),
                  )),
              Positioned(
                  top: size.height * 0.35,
                  left: size.height * 0.035,
                  child: Text('${data.caption}',
                      style: kLabel6.copyWith(
                          color: Colors.white,
                          fontSize: size.height*0.065,
                          fontWeight: FontWeight.w400,
                          shadows: [
                            Shadow(
                              color: Colors.grey.shade900,
                              offset: Offset(0.5, 0.5),
                              blurRadius: 2,
                            )
                          ]))),
              Positioned(
                  top: size.height * 0.68,
                  left: size.height * 0.033,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        '${data.location}',
                        style: kLabel6.copyWith(
                            color: Colors.white,
                            fontSize: size.height*0.055,
                            shadows: [
                              Shadow(
                                color: Colors.grey.shade900,
                                offset: Offset(0.5, 0.5),
                                blurRadius: 2,
                              )
                            ]),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        MyPadding(
          context,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.height * 0.4,
                child: Stack(
                  children: [
                    Users(context, '${data.user2}',myRad: 0.07),
                    Positioned(left:size.height*0.101,top: size.height*0.001,child: UsersBg(context,bgVal: 0.14)),
                    Positioned(
                        left: size.height * 0.105,
                        child: Users(context, '${data.user3}',myRad: 0.07)),
                    Positioned(
                        top: size.height * 0.0005,
                        left: size.height * 0.227,
                        child: SBCont(context,bgVal: 0.14)),
                    Positioned(
                        top: size.height * 0.0005,
                        left: size.height * 0.23,
                        child: SFCont(context, userLeft.toString(),bgVal: 0.14))
                  ],
                ),
              ),
              Text(
                'Ahmad & ${userLeft} friends join this event',
                style: kLabel6.copyWith(color: Colors.black, fontSize: size.height*0.055),
                softWrap: true,
              ),
            ],
          ),
        ),
        MyPadding(context,
            child: Text(
              '${data.captionDet}',
              style: kLabel6.copyWith(
                fontSize: size.height*0.05,
                letterSpacing: 0.2,
              ),
              softWrap: true,
            )),
        MyPadding(context,child: Image.asset('images/peshawar.jpg',fit: BoxFit.fitWidth,width: double.infinity,height: size.height*0.32,)),
        MyPadding(
          context,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(size.height * 0.01),
                child: Icon(
                  Icons.pan_tool_rounded,
                  color: Colors.grey,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(width: size.height*0.1,),
              Expanded(
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Text('Join Now',style: kLabel6.copyWith(color: Colors.white,fontSize: 15),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(size.height*0.035)
                  ),
                  constraints: BoxConstraints(
                    // minWidth: size.height*0.3,
                    minHeight: size.height*0.1,
                  ),
                  fillColor: Color(0xff030A34),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}