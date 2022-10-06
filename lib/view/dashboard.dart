import 'package:event_finder_app/view/home_screen.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final _tabs=[
      HomePage(),
      Center(child: Text('Groups'),),
      Center(child: Text('My Events'),),
      Center(child: Text('Settings'),),
    ];
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xff030A34),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group_outlined,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.event,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined,),label: ''),
        ],
        onTap: (value){
          setState((){
            _currentIndex=value;
          });
        },
      ),
    );
  }
}
