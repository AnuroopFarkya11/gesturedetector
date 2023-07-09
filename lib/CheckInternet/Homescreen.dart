import 'package:flutter/material.dart';
class NetHomeScreen extends StatefulWidget {
  const NetHomeScreen({Key? key}) : super(key: key);

  @override
  State<NetHomeScreen> createState() => _NetHomeScreenState();
}

class _NetHomeScreenState extends State<NetHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: const [

        Text("Welcome to home screen!",style: TextStyle(fontSize: 20),)

      ],
    );
  }
}
