import 'dart:developer';

import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  MyTextFormField({Key? key}) : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  final formkey = GlobalKey<FormState>();
  late String errorstring="";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: formkey,
            child: TextFormField(


              validator: (value) {
                if(value!.isEmpty)
                  {
                    return "Enter input";
                  }
                else{
                  return null;
                }

              },

              onTap: (){
                log("Tapped");

              },
              onEditingComplete: (){
                log("Done");
              },
              onSaved: (value){
                log("SAVED $value");
              },
              onFieldSubmitted: (value){
                log("Submitted $value");
              },

              decoration: InputDecoration(
                // errorText: errorstring,
                  labelText: 'Enter your name', border: OutlineInputBorder(borderSide: BorderSide.none),

              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            // key: formkey,
            child: TextFormField(
              onTapOutside: (value){
                log("$value");

              },


              validator: (value) {
                if(value!.isEmpty)
                {
                  return "Enter input";
                }
                else{
                  return null;
                }

              },

              onTap: (){
                log("Tapped");

              },
              onEditingComplete: (){
                log("Done");
              },
              onSaved: (value){
                log("SAVED $value");
              },



              decoration: InputDecoration(
                // errorText: errorstring,
                labelText: 'Enter your name', border: OutlineInputBorder(borderSide: BorderSide.none),

              ),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {
          if(formkey.currentState!.validate())
            {
              formkey.currentState!.save();
              // formkey.currentState!.
            }

        }, child: Text('Continue'))
      ],
    );
  }
}
