import 'package:flutter/material.dart';
class MyLayoutBuilder extends StatelessWidget {
  const MyLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: LayoutBuilder(builder: (context,BoxConstraints constraints){
          if(constraints.maxWidth>=480)
            {
              //vertical screen


              return Row(
                children: [
                  Spacer(flex: 1,),

                  Container(
                    height: constraints.maxWidth*0.3,
                    color: Colors.yellow,
                    child: Center(child: Text("Left screen"),),

                  ),

                  Spacer(flex: 1,),

                  Container(
                    color: Colors.blue,
                    height: constraints.maxWidth*0.3,
                    child: Center(child: Text("Right screen"),),
                  ),

                  Spacer(flex: 1,),

                ],
              );


            }
          else
            {
              return Container(
                height: constraints.maxWidth,
                color: Colors.blue,
                child: Center(child: Text("Vertical Screen"),),
              );
            }
        }),
      ),
    );
  }
}
