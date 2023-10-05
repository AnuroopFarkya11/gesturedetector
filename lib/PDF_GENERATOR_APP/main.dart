import 'package:flutter/material.dart';
class PdfGenerator extends StatelessWidget {
  const PdfGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("PDF generator"),backgroundColor: Colors.black26,),
        body:Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(title: Text("Simple Pdf"),),
              )
              
            ],
          ),
        ),
        
      ),
    );
  }
}
