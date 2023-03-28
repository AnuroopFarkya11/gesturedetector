import 'package:flutter/material.dart';
class MyRouteMethod extends StatelessWidget {
  MyRouteMethod({Key? key}) : super(key: key);
  final dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: dataController,
          ),
          SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/route2', arguments: '${dataController.text}');
            },
            child: Text("Continue"),
          ),
        ],
      ),
    );
  }
}
