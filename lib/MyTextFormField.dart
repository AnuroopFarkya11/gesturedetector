import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            child: TextFormField(
              key: formkey,
              validator: (value) {},
              decoration: InputDecoration(
                  labelText: 'Enter your name', border: OutlineInputBorder()),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {
          if(formkey.currentState!.validate())
            {
            }
        }, child: Text('Continue'))
      ],
    );
  }
}
