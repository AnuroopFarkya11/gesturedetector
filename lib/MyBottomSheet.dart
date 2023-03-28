import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contex) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: contex,
                  isScrollControlled:false,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        
                      ),
                      child: SizedBox(
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Enter data"),
                            ),
                            ElevatedButton(onPressed: () {}, child: Text("ADD"))
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Text("Bottom Sheet"),
          ),
        ],
      ),
    );
  }
}
