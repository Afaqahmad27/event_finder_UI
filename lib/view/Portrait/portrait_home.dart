import 'package:flutter/material.dart';
import 'package:event_finder_app/ViewModel/constants.dart';
import 'package:event_finder_app/view/card_widget.dart';
import '../event_widget.dart';

Widget PortraitMode(BuildContext context){
  var size = MediaQuery.of(context).size;
  return SafeArea(
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
          height: size.height * 0.44,
          child: ListView.separated(
            itemCount: listCards.length,
            separatorBuilder: (context, _) => SizedBox(
              width: size.height * 0.04,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                MyCard(context, data: listCards[index]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: size.height * 0.036,
            right: size.height * 0.043,
            top: size.height * 0.03,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Event for you',
                style: kLabel6.copyWith(
                  fontSize: 15,
                  color: Color(0xff000000),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size(20, 20)),
                onPressed:(){},
                child: Text('View More',
                  style: kLabel6.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                left: size.height * 0.036,
                right: size.height * 0.036,
                top: size.height * 0.025),
            child: ListView.separated(
              itemCount: eventList.length,
              separatorBuilder: (context,_)=>SizedBox(height: size.height*0.02,),
              itemBuilder: (context, index)=>MyEvent(context, data: eventList[index]),
            ),
          ),
        )
      ],
    ),
  );
}