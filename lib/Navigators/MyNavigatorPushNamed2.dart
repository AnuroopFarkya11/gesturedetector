import 'package:flutter/material.dart';
class MyNavigatorPushedNamed2 extends StatelessWidget {
  const MyNavigatorPushedNamed2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final data = ModalRoute.of(context)!.settings.arguments as String;
    print(data);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("$data"))

        ],
      ),
    );
  }
}
