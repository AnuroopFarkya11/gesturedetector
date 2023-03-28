import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class MyTextField extends StatelessWidget {
  MyTextField({Key? key}) : super(key: key);

  final _UsernameController = TextEditingController();
  final _PasswordCOntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ENTER YOUR DETAILS',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                    controller: _UsernameController,
                    decoration: const InputDecoration(
                        //icon will be placed outside the textfield
                        // icon: Icon(Icons.account_box),
                        labelText: 'User Name',
                        labelStyle: TextStyle(fontSize: 20),
                        //icon will be placed inside the textfield
                        prefixIcon:
                            Icon(Icons.account_circle_rounded, size: 30),
                        suffixIcon: Icon(Icons.add),
                        border: OutlineInputBorder()))),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _PasswordCOntroller,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String pass = 'Hanumnaji@07';
                  String user = 'Ramji@07';

                  String USER = _UsernameController.text;
                  print(USER);
                  if (user == USER) {
                    print("Done");
                  }
                },
                child: Text('Login',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w300))),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 70,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 2,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'MULTILINE TEXTFIELD',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {},
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
