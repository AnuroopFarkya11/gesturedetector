import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/pdf_class.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/pdf_image.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/pdf_paragraph_class.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/pdf_report.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/whizz_report.dart';
class PdfGenerator extends StatelessWidget {
  const PdfGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
    );
  }
}
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController controller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDF generator"),backgroundColor: Colors.black26,),
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            /// Simple pdf with centered text
            GestureDetector(
                onTap: (){
                  showDialog(context: context, builder: (context)=>AlertDialog(title: Text("Enter Text"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      TextField(
                        controller:controller ,
                        decoration: InputDecoration(hintText:"Enter some text"),
                      ),
                      SizedBox(height: 20,),

                      MaterialButton(onPressed: ()async{
                        final pdfFile = await PdfApi.generateCentredText(controller.text);
                        PdfApi.openFile(pdfFile);
                      },child: Text("Continue"),color: Colors.greenAccent,)

                    ],
                  ),)
                  );

                },
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(title: Text("Simple Pdf",),
                  ),
                )

            ),


            /// Paragraph pdf : Include Header, Paragraphs, Bullet points, Links
            GestureDetector(
              onTap: ()async{
                final file = await ParagraphPdfApi.generate();
                PdfApi.openFile(file);
              },
              child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text("Paragraph pdf"),
                ),
              ),
            ),

            GestureDetector(
              onTap: ()async{
                final file = await ReportPdf.generate();
                PdfApi.openFile(file);
              },
              child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text("Report"),
                ),

              ),
            ),
            GestureDetector(
              onTap: ()async{
                final file = await ImagePdf.generateImage();
                PdfApi.openFile(file);
              },
              child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text("Image Pdf"),
                ),

              ),
            ),

            GestureDetector(
              onTap: ()async{
                final file = await WhizzReport().generate();
                PdfApi.openFile(file);
              },
              child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text("Whizz Report"),
                ),

              ),
            ),




          ],
        ),
      ),

    );
  }
}
