import 'package:flutter/material.dart';
class StyledText extends StatelessWidget {
  String text;

  StyledText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
    );
  }
}