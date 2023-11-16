import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final Box box;

  @override
  void initState() {
    super.initState();
    box = Hive.box("Hanumanji");
    /// removes all the data from the database
    // box.clear();
  }

  /// writing data
  void writeData(){
    box.put(1, "Ram ji");

    /// auto increment of key, is being done through this method
    box.add("Anuroop");
  }


  /// reading data
  void readData(){
    var data = box.get(2);
    final SnackBar snackBar = SnackBar(content: Text("Data: ${data.toString()}"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// deleting data
  void deleteData(){
    box.delete(1);
    SnackBar snackBar = const SnackBar(content: Text("Data deleted"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hive App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // MaterialButton(onPressed: (){},child: Text("Write"),color: Colors.blue,)
            ElevatedButton(
              onPressed: writeData,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("Write"),
            ),
            ElevatedButton(
              onPressed: readData,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
              child: const Text("Read"),
            ),
            ElevatedButton(
              onPressed: deleteData,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
