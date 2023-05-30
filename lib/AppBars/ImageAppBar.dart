import 'package:flutter/material.dart';

class ImageAppBar extends StatelessWidget {
  const ImageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App Bar"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70)),
            image: DecorationImage(

              fit: BoxFit.fill,
              image: Image.asset("assets/mountain.jpg",).image
            )
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(),
        ),
      ),
    );
  }
}
