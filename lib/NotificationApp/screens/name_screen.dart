import 'package:flutter/material.dart';
import 'package:gesturedetector/NotificationApp/firebase_messaging_services/messaging_services.dart';
import 'package:gesturedetector/NotificationApp/screens/send_notification.dart';

import '../store_service/firestore_Service.dart';

class NameScreen extends StatelessWidget {
  NameScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> nameKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: nameKey,
                child: TextFormField(
                  controller: _textEditingController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name"
                  ),
                )),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async{
                  if (nameKey.currentState!.validate()) {
                    await FireStoreServices.pushUserProfile({
                      "Name": _textEditingController.text,
                      "Token": FirebaseMessagingService.userToken
                    }).whenComplete((){
                      Navigator.pushNamed(context, "/SendNotificationScreen",
                          arguments: _textEditingController.text);
                    });


                  }
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
