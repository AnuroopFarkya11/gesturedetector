import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class FireStoreServices{

  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static Future<void> pushUserProfile(Map<String,dynamic> userMap)async{
    try {
      await firestore.collection("Users").doc(userMap["Name"]).set(userMap).whenComplete((){
        log("FIRESTORE PUSH USER PROFILE STATUS : DONE");
      });
    } on FirebaseException catch (e) {
      log("FIRESTORE PUSH USER PROFILE STATUS : ${e.message.toString()}");
    }

  }

}