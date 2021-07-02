import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//18 Card Widget
//pakai extract method (CardTracking) untuk perulangannya 
//
//
//plis gausah dikomen iki aplikasi opo, iki sokor sokor ae ngawur slicing aplikasi ga jelas gado gado ye

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(children: [
        Container(
            padding: EdgeInsets.only(top: 50, left: 20),
            height: 150,
            width: 800,
            color: Colors.green,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Friday, July 2",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Your Parcels",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )
            ])),
        Container(
          padding: EdgeInsets.only(top: 40, left: 20), 
          child: 
            Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "Tracking",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            CardTracking(Icons.ac_unit,"AC"),
            CardTracking(Icons.lock_clock,"JAM"),
            CardTracking(Icons.access_alarm,"ALARAM"),
            CardTracking(Icons.accessibility_new_outlined,"MAN"),
            CardTracking(Icons.backpack,"BACKPACK"),
            CardTracking(Icons.qr_code_rounded,"QR CODE"),
            CardTracking(Icons.gamepad,"GAME"),
            CardTracking(Icons.adb_sharp,"ANDROID"),
          ],
        )
      )])),
    );
  }

  Card CardTracking(IconData iconData, String data) {
    return Card(
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.all(15), child: Icon(iconData, color: Colors.green)),
                Text(data),
              ],
            ),
          );
  }
}
