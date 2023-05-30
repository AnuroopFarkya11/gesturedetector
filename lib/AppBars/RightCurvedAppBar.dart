import 'package:flutter/material.dart';
class RightCurvedAppBar extends StatelessWidget {
  const RightCurvedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: Text("My App Bar"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(300),bottomRight: Radius.circular(100))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(),
        ),
        actions: [
          Icon(Icons.search)
        ],
      ),
    );
  }
}
