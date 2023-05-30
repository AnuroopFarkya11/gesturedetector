import 'package:flutter/material.dart';
class GoodMorningAppBar extends StatelessWidget {
  const GoodMorningAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        actions: [
          Icon(Icons.search)
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(220),bottomRight: Radius.circular(220))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning,",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
                        Text("Bot,",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 150,)
              ],
            ),


          ),
        ),


      ),
    );
  }
}
