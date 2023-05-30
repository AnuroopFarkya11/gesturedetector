import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  const GradientAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [Icon(Icons.search)],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(400))),
        flexibleSpace:Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(400)),
            gradient: RadialGradient(
              colors: [
                Color(0xff083EF6),
                Color(0xff008dff),
                Colors.deepPurpleAccent,
                Colors.lightBlueAccent,
                Colors.deepPurple,
                Colors.black

              ]
            )
          ),
        ) ,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(350),
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Good Morning,",style: TextStyle(color: Colors.white,fontSize: 30),),
                    CircleAvatar(backgroundColor: Colors.white,)
                  ],
                ),
                SizedBox(height: 220,)


              ],
            ),



          ),
        ),
      ),
    );
  }
}
