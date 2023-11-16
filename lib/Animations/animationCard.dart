import 'package:flutter/material.dart';
/*Widget AnimationCard({required Widget child}) {
  return AspectRatio(
      aspectRatio: 2.75 / 3,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        child: Center(child: child),
      ));
}*/
class AnimationCard extends StatelessWidget {
  Widget child;
  AnimationCard({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
        aspectRatio: 2.75 / 3,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 20,
          child: Center(child: child),
        ));
  }
}
