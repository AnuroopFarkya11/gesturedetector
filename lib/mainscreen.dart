import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Color bg_color = Colors.black;
  Color lamp_color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: (){
        setState(() {
          bg_color==Colors.black?bg_color=Colors.white:bg_color=Colors.black;
          lamp_color==Colors.white?lamp_color=Colors.yellow:lamp_color=Colors.white;
        });
      },

      child: Container(
        color: bg_color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.lightbulb_outline,size: 200,color: lamp_color,),
            ],
          ),
        ),
      ),
    );
  }
}
