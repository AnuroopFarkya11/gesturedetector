import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class FirebaseMessagingService {
  static FirebaseMessaging fMessaging = FirebaseMessaging.instance;
  static String userToken = "";

  static Future<void> getFirebaseMessagingToken() async {
    await fMessaging.requestPermission();
    await fMessaging.getToken().then((value) {
      userToken = value!;
      log("Notification status: $value");
    });
  }

  static Future<void> sendNotification(Map chatUser, String message) async {
    try {
      final body = {
        "to": chatUser["userToken"],
        "notification": {
          "title": chatUser["userName"], //current user name
          "body": message,
          "android_channel_id": "Chats",
          "sound": "default"

        },
      };

      var url = Uri.parse("https://fcm.googleapis.com/fcm/send");
      await post(url,
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader:
                "key=AAAA5oIH1UQ:APA91bH6aNw6hLInks4aswHlhiXshuy8NliJ6NmwFOZ6fOwJdwjHVzKLjiUUyoWZvlrc4A-tiYkSe8Gc8ADCe9di396iG8iIz1WN8bsOWirHRkp4iFeNj_cHXv7AewTVK2muUtwO3QNx"
          },
          body: jsonEncode(body));
      log("Notification sent");
    } on FirebaseException catch (e) {
      log("Notification error:${e.message.toString()}");
    }
  }
}
