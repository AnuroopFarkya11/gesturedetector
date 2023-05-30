import 'package:flutter/material.dart';
import 'package:gesturedetector/AppBars/BasicSilverAppBar.dart';
import 'package:gesturedetector/AppBars/GoodMOrningAppBar.dart';
import 'package:gesturedetector/AppBars/GradientAppBar.dart';
import 'package:gesturedetector/AppBars/ImageAppBar.dart';
import 'package:gesturedetector/AppBars/IntermidiateAppBar.dart';
import 'package:gesturedetector/AppBars/LeftCurvedAppBar.dart';
import 'package:gesturedetector/AppBars/RightCurvedAppBar.dart';

class MyAppBars extends StatelessWidget {
  const MyAppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AppBar"),
        elevation: 22,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RightCurvedAppBar()));
                },
                child: Text("RightCurved")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LeftCurvedAppBar()));
                },
                child: Text("Left Curved")),


            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>GoodMorningAppBar()));
            }, child: Text("Good Morning")),

            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>GradientAppBar()));}, child: Text("Gradient AppBar")),

            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>ImageAppBar()));}, child: Text("Image AppBar")),

            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>BasicSilverAppBar()));}, child: Text("Silver App Bar")),

            ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>IntermidiateAppBar()));}, child: Text("Intermidiate App Bar"))

          ],
        ),
      )),
    );
  }
}
