import 'dart:async';

import 'package:flutter/material.dart';
import 'Login_Page.dart';

void main() {
  runApp(SplashPage());
}

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login_Page()));
  }

  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Stack(
        children: [
          Center(
            child:  Text("talabat",style: TextStyle(
          fontSize: 70,
          color: Colors.white,
          fontWeight: FontWeight.bold,fontStyle:FontStyle.italic ),),
          ),

    ]
      ),
    );
  }
}
