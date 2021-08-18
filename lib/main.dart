import 'dart:async';

import 'package:flutter/material.dart';
import 'app/my_app.dart';

void main() {
  runApp(MaterialApp(   
     debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    // TODO: implement initState

    Future.delayed(Duration(seconds: 3), () {
      print("After 3 seconds");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/bored.jpg'),
        
      ),
    );
  }
}
