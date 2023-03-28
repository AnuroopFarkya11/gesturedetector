import 'package:flutter/material.dart';


Future<String> getData(){

  return Future.delayed(Duration(seconds: 2),(){
    return "I am data";
  });


}




class MyFutureHome extends StatefulWidget {
  const MyFutureHome({Key? key}) : super(key: key);

  @override
  State<MyFutureHome> createState() => _MyFutureHomeState();
}

class _MyFutureHomeState extends State<MyFutureHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context,snapshot)
          {
            if(snapshot.hasData)
              {
                return Text("${snapshot.data}");
              }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
