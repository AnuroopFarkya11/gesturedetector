import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesturedetector/Ui/Day2/TripApp/home_screen.dart';
///  What did you learn.
/// ".." is known as cascade notation allow you to make a sequence of
/// operation on the same object.



class TripApp extends StatelessWidget {
  const TripApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 640),
        builder: (BuildContext context, Widget? child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ));
  }
}
