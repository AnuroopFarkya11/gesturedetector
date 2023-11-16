import 'package:flutter/material.dart';
import 'package:gesturedetector/HiveApp/homeScreen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';



///- It is lightweight NoSql database.
/// - It Stores data in key - value pair format.
/// - Hive also allows you to store custom classes.
/// - Hive runs on flutter web also.
/// - Hive uses the concept of "boxes" for storing data in the
/// database. A box is similar to a table on in SQL database.




void main()async{
  ///  Initialize Hive
  await Hive.initFlutter();

  /// open the box : mtlb ek database bna rhe aur uska naam de rhe
  var box = await Hive.openBox("Hanumanji");

  runApp(const HiveApp());
}


class HiveApp extends StatelessWidget {
  const HiveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
