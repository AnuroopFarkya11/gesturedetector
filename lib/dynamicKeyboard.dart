import 'dart:developer';

import 'package:flutter/material.dart';

class DynamicKeyboard extends StatefulWidget {
  const DynamicKeyboard({Key? key}) : super(key: key);

  @override
  State<DynamicKeyboard> createState() => _DynamicKeyboardState();
}

class _DynamicKeyboardState extends State<DynamicKeyboard> {
  final _controller = TextEditingController();
  var keyboardType = TextInputType.text;
  bool _typeKey = true;
  FocusNode _focusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            child: TextFormField(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
                decoration:
                InputDecoration(labelText: "code", hintText: 'ABC1234'),
                controller: _controller,
                focusNode: _focusNode,
                textCapitalization: TextCapitalization.characters,
                keyboardType: keyboardType,
               /* onChanged: (value) {
                  if (value.length == 3) {
                    FocusScope.of(context).unfocus();
                    setState(() {
                      keyboardType = TextInputType.number;
                    });

                    Future.delayed(Duration(milliseconds: 150)).then((value) {
                      FocusScope.of(context).requestFocus();

                    });
                  } else {
                    setState(() {
                      keyboardType = TextInputType.text;
                    });
                  }
                }*/
              onTap: (){

              },


                ),
          ),

          ElevatedButton(onPressed: (){
            _typeKey = !_typeKey;
            log("KeyBoard type $_typeKey");

            FocusScope.of(context).unfocus();

            if(_typeKey)
            {
              //email wala
              setState(() {
                keyboardType = TextInputType.text;
              });

            }else{
              setState(() {
                keyboardType = TextInputType.number;
              });
            }

            Future.delayed(Duration(milliseconds: 150)).then((value) {
              FocusScope.of(context).requestFocus();
            });





          }, child: Text("Tap"))
        ],
      ),
    );
  }
}
