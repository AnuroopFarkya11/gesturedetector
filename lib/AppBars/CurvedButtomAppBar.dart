import 'package:flutter/material.dart';

class CurvedBottomAppBar extends StatelessWidget {
  const CurvedBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            expandedHeight: 200,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset("assets/mountain.jpg").image)),
                  child: SafeArea(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50,),
                          Text("Hi!",style: TextStyle(color: Colors.white,fontSize: 60),),
                          Text("Daksh",style: TextStyle(color: Colors.white,fontSize: 70)),

                        ],

                      ),
                    ),
                  ),


                );
              },
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(200),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
