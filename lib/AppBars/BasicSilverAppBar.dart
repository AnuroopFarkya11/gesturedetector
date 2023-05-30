import 'package:flutter/material.dart';

class BasicSilverAppBar extends StatelessWidget {
  const BasicSilverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              // floating: true,
              // snap: true,
              pinned: true,
              backgroundColor: Colors.red,
              expandedHeight: 200,
              title: Text("My App Bar"),
              centerTitle: true,
              actions: [
                Icon(Icons.settings),
                SizedBox(
                  width: 12,
                )
              ]),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
            Container(height: 160, color: Colors.amber),
            SizedBox(
              height: 160,
            ),
          ]))
        ],
      ),
    );
  }
}
