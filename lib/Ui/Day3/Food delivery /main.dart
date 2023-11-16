import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesturedetector/Ui/Day3/Food%20delivery%20/home_screen.dart';
import 'package:gesturedetector/Ui/Day3/Food%20delivery%20/starter_page.dart';

/// WHAT HAVE I LEARNED?
/// A NEW PACKAGE FOR ANIMATING WIDGETS : flutter_animate
/// TRANSITION BETWEEN PAGES : page_transition




class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, Widget? widget) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Roboto' ),
          home: StartPage(),
        ));
  }
}
