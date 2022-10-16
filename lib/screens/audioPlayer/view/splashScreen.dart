import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      return Navigator.pushReplacementNamed(context, 'main');
    });
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff212121),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: Lottie.asset('assets/image/logo.json'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Amp Audio',
                  style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w400, fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Music Everywhere',
                  style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ],
            ),
          ),
        ));
  }
}
