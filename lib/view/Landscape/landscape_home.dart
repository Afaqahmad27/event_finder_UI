import 'package:flutter/material.dart';
import 'package:event_finder_app/ViewModel/constants.dart';
import 'package:event_finder_app/view/card_widget.dart';
import '../event_widget.dart';

Widget LandscapeMode(BuildContext context){
  var size = MediaQuery.of(context).size;
  return SafeArea(
    child: SingleChildScrollView(
      child: SizedBox(
        height: size.height*1.2,
        child: Column(
          children: [
            MyPadding(
              context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current location'),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.height * 0.0002,
                                top: size.height * 0.002),
                            child: Icon(
                              size: 20,
                              Icons.location_on,
                              color: Color(0xff030A34),
                            ),
                          ),
                          Text(
                            'Peshawar, PAK',
                            style: kLabel6.copyWith(
                                color: Colors.black, fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                  Stack(children: [
                    CircleAvatar(
                      radius: size.height * 0.033,
                      foregroundImage: AssetImage('images/img_3.jpg'),
                    ),
                    WhiteCircle(),
                    OrangeCircle(),
                  ]),
                ],
              ),
            ),
            MyPadding(
              context,
              child: HomeTextField(),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(left: size.height * 0.039),
              height: size.height * 0.56,
              child: ListView.separated(
                itemCount: listCards.length,
                separatorBuilder: (context, _) => SizedBox(
                  width: size.height * 0.04,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    MyCard(context, data: listCards[index],ctWt: 0.65,imgHt: 0.4,posT2: 0.15,posT3: 0.32,userSize: 0.2,userIcon: 0.04,bgVal: 0.003,smBg: 0.06),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.height * 0.08,
                right: size.height * 0.14,
                top: size.height * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Event for you',
                    style: kTitle1.copyWith(fontWeight: FontWeight.w500)
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: Size(20, 20)),
                    onPressed:(){},
                    child: Text('View More',
                      style: kLabel6.copyWith(fontSize: 14,fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.height * 0.18,
                    right: size.height * 0.2,
                    top: size.height * 0.025),
                child: ListView.separated(
                  itemCount: eventList.length,
                  separatorBuilder: (context,_)=>SizedBox(height: size.height*0.02,),
                  itemBuilder: (context, index)=>MyEvent(context, data: eventList[index],contHtWt: 0.14,colHt: 0.15,sizBx: 0.12),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}