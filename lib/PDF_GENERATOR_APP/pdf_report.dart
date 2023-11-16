import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/pdf_class.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

class ReportPdf {
  static var bg;
  static var appIcon;
  static var fonts;



  static Future<File> generate() async {
    final pdf = Document();



    bg = await rootBundle.loadString("assets/pdf_bg.svg");
    appIcon = await rootBundle.loadString("assets/appIcon.svg");
    fonts = await PdfGoogleFonts.abhayaLibreRegular();

    pdf.addPage(MultiPage(
        margin: EdgeInsets.symmetric(
            vertical: 10 * PdfPageFormat.point,
            horizontal: 10 * PdfPageFormat.point),
        header: (context) => reportHeader(),
        build: (context) {
          return <Widget>[

            SizedBox(height: 1*PdfPageFormat.cm),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children:[

                  Text("Patient Demographics",style: TextStyle(fontSize: 20)),

                  SizedBox(height: 10*PdfPageFormat.point),



                ]
              )
            )



          ];
        }));

    return PdfApi.saveDocument(name: "Whizz_Report.pdf", pdf: pdf);
  }

  static Widget reportHeader() {
    return Container(
      height: 5 * PdfPageFormat.cm,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 1.25 * PdfPageFormat.cm),
      decoration: BoxDecoration(
        image: DecorationSvgImage(svg: bg),
        color: PdfColor.fromHex("2B447C"),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Report",
            style: TextStyle(
                font: fonts,
                fontSize: 1.7 * PdfPageFormat.cm,
                color: PdfColors.white)),
        SvgImage(svg: appIcon, height: 3 * PdfPageFormat.cm)
      ]),
    );
  }
}
