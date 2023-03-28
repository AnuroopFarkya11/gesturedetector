import 'package:flutter/material.dart';
import 'package:gesturedetector/Navigators/Mynavigator2.dart';

class MyPassingData extends StatelessWidget {
  MyPassingData({Key? key}) : super(key: key);


  late final _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _inputController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Enter some data"),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyNavigator2(data:_inputController.text,)));
            print(_inputController.text);
          }, child: Text("Pass"))
        ],
      ),
    );
  }
}
