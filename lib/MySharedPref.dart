import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gesturedetector/services/MyServices.dart';
class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {

  int num = 0;



  void getInitialCount() async{
    int n = await MyServices().getData();

    setState((){
      num = n;
    });
  }




  void increment_count() {

    // getInitialCount();
    setState(() {
      ++num;
    });
    MyServices().writeData(num);

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getInitialCount();
    log("Initial number: ${num}");

  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Increment"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("${num}",style: TextStyle(fontSize: 40),)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {increment_count();},child: Icon(Icons.add),),
    );
  }


}
