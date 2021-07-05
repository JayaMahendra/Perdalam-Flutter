import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracking_apss/main_page.dart';
import 'splash_screen.dart';



//SLICING ALA ALA DRIBBBLE

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
