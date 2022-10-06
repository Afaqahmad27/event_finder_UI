import 'package:flutter/material.dart';

import '../ViewModel/constants.dart';
import '../ViewModel/event_data.dart';

Widget MyEvent(BuildContext context,{required EventData data, double contHtWt=0.085,double colHt=0.09,double sizBx=0.01}){
  var size=MediaQuery.of(context).size;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: size.height * contHtWt,
        width: size.height * contHtWt,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage('images/${data.img}'),
              fit: BoxFit.fitHeight,
            )),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.55),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${data.dMon}',style: TextStyle(color: Colors.white,fontSize: 13),),
                Center(child: Text('${data.dDate}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500))),
              ],
            )
          ],
        ),
      ),
      Container(
        height: size.height * colHt,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${data.title}',
              style: kLabel6.copyWith(
                  color: Colors.black, fontSize: 13),
            ),
            Text(
              '${data.timing}',
              style: kLabel6.copyWith(
                  fontWeight: FontWeight.w400),
            ),
            Text('${data.location}',
                style: kLabel6.copyWith(
                    fontWeight: FontWeight.w400))
          ],
        ),
      ),
      SizedBox(
        width: size.height * sizBx,
      ),
      RawMaterialButton(
        onPressed: () {},
        child: Text(
          'Join',
          style: kLabel6,
        ),
        fillColor: Colors.grey.shade300,
        elevation: 0,
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(
          minWidth: size.height * 0.08,
          minHeight: size.height * 0.055,
        ),
      )
    ],
  );
}