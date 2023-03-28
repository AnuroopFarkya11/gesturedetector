import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReadingJsonFile extends StatelessWidget {
  const ReadingJsonFile({Key? key}) : super(key: key);


  _loadingMessages() async{
    final response = await rootBundle.loadString('assets/datafile.json');

    final Map<dynamic,dynamic> decodedMap = jsonDecode(response);
    // final data = jsonDecode(response);



    print(decodedMap['users']);
  }


  @override
  Widget build(BuildContext context) {
    _loadingMessages();
    return Scaffold(
      body: Column(

      ),
    );
  }
}
