import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:gesturedetector/NotificationApp/firebase_messaging_services/messaging_services.dart';
import 'package:gesturedetector/NotificationApp/screens/name_screen.dart';
import 'package:gesturedetector/NotificationApp/screens/send_notification.dart';
class NotificationApp extends StatefulWidget {
  const NotificationApp({Key? key}) : super(key: key);

  @override
  State<NotificationApp> createState() => _NotificationAppState();
}

class _NotificationAppState extends State<NotificationApp> {

  // final FirebaseMessagingService _firebaseMessagingService = FirebaseMessagingService();
  @override
  void initState(){
    // TODO: implement initState
    super.initState();

    FirebaseMessagingService.getFirebaseMessagingToken();

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder()
        )
      ),
      home: NameScreen(),
      routes: {
        "/NameScreen":(context)=>NameScreen(),
        "/SendNotificationScreen":(context)=>SendNotificationScreen()
      },
    );
  }
}
