import 'package:ampaudio/screens/audioPlayer/provider/AudioProvider.dart';
import 'package:ampaudio/screens/audioPlayer/view/aboutUs.dart';
import 'package:ampaudio/screens/audioPlayer/view/firstScreen.dart';
import 'package:ampaudio/screens/audioPlayer/view/playScreen.dart';
import 'package:ampaudio/screens/audioPlayer/view/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
       ListenableProvider(create: (context) => AudioProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          'main': (context) => FirstScreen(),
          'firat': (context) => PlayScreen(),
          'info': (context) => AboutUs(),
        },
      ),
    ),
  );
}
