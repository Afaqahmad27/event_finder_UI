import 'package:event_finder_app/ViewModel/card_data.dart';
import 'package:flutter/material.dart';
import '../../ViewModel/constants.dart';

Widget PortraitMode(BuildContext context, {required CardData data}){
  String value = data.leftUser.toString();
  int userLeft = int.parse(value);
  userLeft = ++userLeft;
  var size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.5,
          child: Stack(
            children: [
              Ink.image(
                image: AssetImage('images/${data.img}'),
                fit: BoxFit.cover,
              ),
              Positioned(
                  top: size.height * 0.089,
                  left: size.height * 0.035,
                  child: Text(
                    '${data.date}',
                    style:
                    kLabel6.copyWith(color: Colors.white, fontSize: size.height*0.025),
                  )),
              Positioned(
                  top: size.height * 0.215,
                  left: size.height * 0.035,
                  child: Text('${data.caption}',
                      style: kLabel6.copyWith(
                          color: Colors.white,
                          fontSize: size.height*0.03,
                          fontWeight: FontWeight.w400,
                          shadows: [
                            Shadow(
                              color: Colors.grey.shade900,
                              offset: Offset(0.5, 0.5),
                              blurRadius: 2,
                            )
                          ]))),
              Positioned(
                  top: size.height * 0.43,
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
                            fontSize: size.height*0.025,
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
                width: size.height * 0.155,
                child: Stack(
                  children: [
                    Users(context, '${data.user2}'),
                    Positioned(left:size.height*0.0472,top: size.height*0.003,child: UsersBg(context)),
                    Positioned(
                        left: size.height * 0.05,
                        child: Users(context, '${data.user3}')),
                    Positioned(
                        top: size.height * 0.0065,
                        left: size.height * 0.0974,
                        child: SBCont(context)),
                    Positioned(
                        top: size.height * 0.0065,
                        left: size.height * 0.099,
                        child: SFCont(context, userLeft.toString()))
                  ],
                ),
              ),
              Text(
                'Ahmad & ${userLeft} friends join this event',
                style: kLabel6.copyWith(color: Colors.black, fontSize:size.height*0.015),
                softWrap: true,
              ),
            ],
          ),
        ),
        MyPadding(context,
            child: Text(
              '${data.captionDet}',
              style: kLabel6.copyWith(
                fontSize: size.height*0.016,
                letterSpacing: 0.2,
              ),
              softWrap: true,
            )),
        MyPadding(context,child: Image.asset('images/peshawar.jpg',fit: BoxFit.fitWidth,width: double.infinity,height: size.height*0.13,)),
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
                    borderRadius: BorderRadius.circular(size.height*0.018)),
              ),
              SizedBox(width: size.height*0.03,),
              Expanded(
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Text('Join Now',style: kLabel6.copyWith(color: Colors.white,fontSize: size.height*0.024),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  constraints: BoxConstraints(
                    // minWidth: size.height*0.3,
                    minHeight: size.height*0.07,
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