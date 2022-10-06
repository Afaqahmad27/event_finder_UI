import 'package:event_finder_app/ViewModel/card_data.dart';
import 'package:flutter/material.dart';
import 'Landscape/landscape_det_event.dart';
import 'Portrait/portrait_det_event.dart';

class DetailEvent extends StatelessWidget {
  CardData data;

  DetailEvent({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

          final deviceStatus=MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: deviceStatus == Orientation.portrait? PortraitMode(context,data:data) : LandscapeMode(context,data: data),
      ),
    );
  }
}
