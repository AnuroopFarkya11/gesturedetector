import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gesturedetector/NotificationApp/firebase_messaging_services/messaging_services.dart';
import 'package:gesturedetector/NotificationApp/store_service/firestore_Service.dart';

class SendNotificationScreen extends StatefulWidget {
  const SendNotificationScreen({Key? key}) : super(key: key);

  @override
  State<SendNotificationScreen> createState() => _SendNotificationScreenState();
}

class _SendNotificationScreenState extends State<SendNotificationScreen> {
  final TextEditingController messController = TextEditingController();


  late List isSelected = List.filled(100, false);
  // late var userList;
  late String token="";

  selectTile(index, res,selectedToken) {
    isSelected[index] = !res;
    token = selectedToken;

    setState(() {});
  }



  @override
  Widget build(BuildContext context) {
    final data = ModalRoute
        .of(context)!
        .settings
        .arguments as String;
    log("ARGUMENT STATUS: ${data.toString()}");


    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Text("UserName: ${data.toString()}"),
              const SizedBox(height: 20,),
              Text("Current TokenId: ${FirebaseMessagingService.userToken}",),
              const SizedBox(height: 20,),

              TextField(
                controller: messController,
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                if(token.isNotEmpty&&data.isNotEmpty&&messController.text.isNotEmpty)
                  {

                  FirebaseMessagingService.sendNotification(
                        {"userToken": token, "userName": data}, messController.text);
                  }
                else{

                  var snackbar = SnackBar(content: Text("Empty fields"),);
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }


              }, child: const Text("Send")),

              StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("Users")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      if (snapshot.hasData) {
                        log("Works fine");
                        var userList = snapshot.data!.docs;
                        // log("${userList[0].data()["Name"]}");
                        var length = userList.length;
                        // isSelected =List.filled(length, false);
                        log(isSelected.toString());
                        return Flexible(
                          child: ListView.builder(
                              itemCount: userList.length, padding: const EdgeInsets
                              .symmetric(vertical: 10), itemBuilder: (context,
                              index) {
                            return ListTile(

                              title: Text(userList[index].data()["Name"]),
                              subtitle: Text(userList[index].data()["Token"],
                                overflow: TextOverflow.ellipsis,),
                              onTap: () {
                                selectTile(index, isSelected[index],userList[index].data()["Token"]);
                              },
                              selected: isSelected[index],
                              selectedTileColor: Colors.green.shade900,
                              // selectedColor: Colors.green,
                              // selectedTileColor: Colors.green,
                            );
                          }),
                        );
                      }
                    }
                    return Container();
                  })


            ],


          ),),
      )
      ,
    );
  }
}
