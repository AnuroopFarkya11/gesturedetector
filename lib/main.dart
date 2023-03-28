import 'package:flutter/material.dart';
import 'package:gesturedetector/MyBottomSheet.dart';
import 'package:gesturedetector/MyChangeNotifiers.dart';
import 'package:gesturedetector/MyFutureBuilder.dart';
import 'package:gesturedetector/MyLayoutBuilder.dart';
import 'package:gesturedetector/MySharedPref.dart';
import 'package:gesturedetector/MyShimmerEffect.dart';
import 'package:gesturedetector/MySocialMediaButton.dart';
import 'package:gesturedetector/MySplashScreen.dart';
import 'package:gesturedetector/MyTextfield.dart';
import 'package:gesturedetector/Navigators/MyNavigator.dart';
import 'package:gesturedetector/Navigators/MyNavigatorPushNamed2.dart';
import 'package:gesturedetector/Navigators/MyPassingData1.dart';
import 'package:gesturedetector/Navigators/Mynavigator2.dart';
import 'package:gesturedetector/Navigators/MyNavigatorPushNamed.dart';
import 'package:gesturedetector/ReadingJsonFIle.dart';

import 'package:gesturedetector/mainscreen.dart';

import 'MyTextFormField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(


        body:MyLayoutBuilder(),
      ),
      routes: {'/route2':(context)=>MyNavigatorPushedNamed2(),
      '/socialButton':(context)=>MySocialMediaButton()},
    );
  }
}
