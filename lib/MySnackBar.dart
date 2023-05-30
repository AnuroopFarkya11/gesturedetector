import 'package:flutter/material.dart';
class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ElevatedButton(
          onPressed: (){

            final snackBar =  SnackBar(content: Text("I am snackbar"),backgroundColor: Colors.black,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

          },
          child: Text("Snack Bar"),

        ),

      ),

    );
  }
}
