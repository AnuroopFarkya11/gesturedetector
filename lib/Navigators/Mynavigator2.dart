import 'package:flutter/material.dart';
class MyNavigator2 extends StatelessWidget {
  late final String data;
  MyNavigator2({Key? key,required this.data}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$data"),
            SizedBox(height: 100.0,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
