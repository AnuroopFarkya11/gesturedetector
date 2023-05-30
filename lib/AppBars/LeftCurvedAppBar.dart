import 'package:flutter/material.dart';
class LeftCurvedAppBar extends StatelessWidget {
  const LeftCurvedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        elevation: 22,
        title: Text("My App Bar",style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        actions: [
          Icon(Icons.search)
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
          child: Container(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(260),bottomLeft: Radius.circular(100))
        ),

      ),

    );
  }
}
