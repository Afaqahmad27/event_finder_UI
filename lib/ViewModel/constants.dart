import 'package:event_finder_app/view/login_page.dart';
import 'package:flutter/material.dart';
import 'card_data.dart';
import 'event_data.dart';

const kTitle1 = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
const kLabel6 = TextStyle(
    fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF505050));

Widget imgContainer(BuildContext context,
    {required String img, required double hValue, required double wValue}) {
  var size = MediaQuery.of(context).size;
  return Container(
    height: size.height * hValue,
    width: size.width * wValue,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('images/$img'),
          fit: BoxFit.cover,
        )),
  );
}

Widget MyTextBtn(BuildContext context,{String? text}) {
  return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size(20, 30)),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
      },
      child: Text(
        '$text',
        style: kLabel6.copyWith(color: Color(0xffFF7418), fontSize: 15),
      ));
}

Widget HomeTextField() {
  return TextField(
    style: kLabel6.copyWith(fontSize: 13, fontWeight: FontWeight.w400),
    decoration: InputDecoration(
        isDense: true,
        hintText: 'Search for event',
        prefixIcon: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size(20, 20)),
            child: Icon(
              Icons.search_sharp,
              size: 25,
              color: Color(0xff030A34),
            )),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16))),
  );
}

Widget MyPadding(
  BuildContext context, {
  Widget? child,
}) {
  var size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(
        left: size.height * 0.025,
        right: size.height * 0.025,
        top: size.height * 0.025),
    child: child,
  );
}


Widget UsersBg(BuildContext context,{bgVal=0.055}){
  var size = MediaQuery.of(context).size;
  return Container(
      height: size.height * bgVal,
      width: size.height * bgVal,
      decoration:
      BoxDecoration(color: Colors.white, shape: BoxShape.circle),
  );
}
Widget Users(BuildContext context, String img,{double myRad=0.03}) {
  var size = MediaQuery.of(context).size;
  return CircleAvatar(
        radius: size.height * myRad,
        foregroundImage: AssetImage('images/$img'),
  );
}

Widget WhiteCircle() {
  return Positioned(
    right: 0,
    child: Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    ),
  );
}

Widget OrangeCircle() {
  return Positioned(
    top: 1,
    right: 1.25,
    child: Container(
      height: 10,
      width: 10,
      decoration:
          BoxDecoration(color: Color(0xff030A34), shape: BoxShape.circle),
    ),
  );
}

Widget SFCont(BuildContext context, String users,{bgVal=0.045}){
  var size =MediaQuery.of(context).size;
  return Container(
    alignment: Alignment.center,
    height: size.height*bgVal,
    width: size.height*bgVal,
    child: Text('$users',style: kLabel6.copyWith(color: Colors.white,),),
    decoration: BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
    ),
  );
}

Widget SBCont(BuildContext context,{bgVal=0.045}){
  var size =MediaQuery.of(context).size;
  return Container(
    height: size.height*bgVal,
    width: size.height*bgVal,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    ),
  );
}


Container userTextInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
    ),
  );
}

Container userEmailInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    ),
  );
}


Container userPasswordInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      obscureText: true,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
    ),
  );
}

Widget authButton(BuildContext context,String authFor,{Widget? NavigateTo,num hVal=0.07, num wVal=0.22 }){
  var size=MediaQuery.of(context).size;
  return RawMaterialButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigateTo!));
    },
    padding: EdgeInsets.all(13),
    child: Container(
      height:size.height*hVal,
      width: size.height*wVal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(authFor,style: kTitle1.copyWith(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),),
          SizedBox(width: 2,),
          Icon(Icons.arrow_forward_outlined, color: Colors.white,)
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xff030A34),
          borderRadius: BorderRadius.circular(16)
      ),
    ),
  );
}

List<CardData> listCards = [
  CardData(
      img: 'img_8.jpg',
      date: '08\nJune',
      caption: 'Peshawar\nBlood Drive\nTogether',
      captionDet: 'Hi Peshawarians!👋 We wait you to join with us.\nWe need you to donate and participate in our blood drive event. Let\'s join Peshawarians!',
      location: 'Peshawar, PAK',
      jUser: '43 joined',
      user1: 'img_4.jpg',
      user2: 'img_2.jpg',
      user3: 'img_3.jpg',
      leftUser: '40'),
  CardData(
    img: 'img_7.jpg',
    date: '09\nJune',
    caption: 'Peshawar\nClean City\nTogether',
    captionDet: 'Hi Peshawarians!👋 We wait you to join with us.\nWe need you to save our city stay clean &\nbeautiful. Let\'s join Peshawarians!',
    location: 'Peshawar, PAK',
    jUser: '40 joined',
    user1: 'img_5.jpg',
    user2: 'img_2.jpg',
    user3: 'img_6.jpg',
    leftUser: '37',
  ),
  CardData(
      img: 'img_10.jpg',
      date: '11\nJune',
      caption: 'Peshawar\nGarbage Collection\nTogether',
      captionDet: 'Hi Peshawarians!👋 We wait you to join with us.\nWe need you to participate and clean our city,\nstay neat & healthy. Let\'s join Peshawarians!',
      location: 'Peshawar, PAK',
      jUser: '35 joined',
      user1: 'img_4.jpg',
      user2: 'img_2.jpg',
      user3: 'img_3.jpg',
      leftUser: '32'),
];

List<EventData> eventList = [
  EventData(
    img: 'img_9.jpg',
    dMon: 'Jun',
    dDate: '12',
    title: 'Volunteer Solosup',
    timing: '09:00 AM to 01:00 PM',
    location: 'Peshawar, PAK',
  ),
  EventData(
    img: 'img_5.jpg',
    dMon: 'Jun',
    dDate: '15',
    title: 'Volunteer Worksup',
    timing: '09:00 AM to 01:00 PM',
    location: 'Peshawar, PAK',
  ),
];
