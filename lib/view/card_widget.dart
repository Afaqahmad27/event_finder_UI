import 'package:event_finder_app/ViewModel/card_data.dart';
import 'package:event_finder_app/view/detail_event.dart';
import 'package:flutter/material.dart';

import '../ViewModel/constants.dart';

Widget MyCard(BuildContext context, {required CardData data,double ctWt=0.404,double imgHt=0.3, double posT2=0.089,double posT3=0.23, double userSize=0.0415,double stackSize=0.2,double userIcon=0.03,double bgVal=0.055,double smBg=0.045}) {
  var size = MediaQuery.of(context).size;
  return Container(
    width: size.height * ctWt,
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailEvent(
                      data: data,
                    )));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: AssetImage('images/${data.img}'),
                  height: size.height * imgHt,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: size.height * 0.019,
                    left: size.height * 0.035,
                    child: Text(
                      '${data.date}',
                      style:
                          kLabel6.copyWith(color: Colors.white, fontSize: 14),
                    )),
                Positioned(
                    top: size.height * posT2,
                    left: size.height * 0.035,
                    child: Text('${data.caption}',
                        style: kLabel6.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            shadows: [
                              Shadow(
                                color: Colors.grey.shade700,
                                offset: Offset(0.5, 0.5),
                                blurRadius: 2,
                              )
                            ]))),
                Positioned(
                    top: size.height * posT3,
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
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(size.height * 0.025),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text('${data.jUser}')),
                  SizedBox(
                    width: size.height * userSize,
                  ),
                  SizedBox(
                    width: size.height*stackSize,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Users(context, '${data.user1}',myRad: userIcon)),
                        Positioned(right:size.height*0.095,top: size.height*0.003,child: UsersBg(context,bgVal: bgVal)),
                        Positioned(
                            right: size.height * 0.088,
                            child: Users(context, '${data.user2}',myRad: userIcon)),
                        Positioned(right:size.height*0.043,top: size.height*0.003,child: UsersBg(context,bgVal: bgVal)),
                        Positioned(
                            right:size.height*0.0355,
                            child: Users(context, '${data.user3}',myRad: userIcon)),
                        Positioned(
                            top: size.height * 0.0065,
                            right: size.height * 0.002,
                            child: SBCont(context,bgVal: smBg)),
                        Positioned(
                            top: size.height * 0.0065,
                            right: size.height * 0.0006,
                            child: SFCont(context, data.leftUser.toString(),bgVal: smBg))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
