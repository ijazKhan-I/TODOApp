import 'dart:async';

import 'package:apiproject/main.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueAccent,
        child: Center(child: Text("Welcome!",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).devicePixelRatio*10
        ),)),
      ),
    );
  }
}
