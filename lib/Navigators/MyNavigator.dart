import 'package:flutter/material.dart';
import 'package:gesturedetector/Navigators/Mynavigator2.dart';
class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNavigator2(data:"Jai shree ram")));
          }, child: Text("Continue"))
        ],
        
      ),
    );
  }
}
