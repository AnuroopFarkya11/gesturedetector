import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gesturedetector/MyTextfield.dart';
import 'package:gesturedetector/ReadingJsonFIle.dart';

class Splashing extends StatefulWidget {
  const Splashing({Key? key}) : super(key: key);

  @override
  State<Splashing> createState() => _SplashingState();
}

class _SplashingState extends State<Splashing> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                ReadingJsonFile()
            ) 
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
