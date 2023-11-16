// import 'dart:js';
import 'package:flutter/services.dart';
import 'package:gesturedetector/PDF_GENERATOR_APP/pdf_class.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class ImagePdf {
  static Future generateImage() async {
    final pdf = Document();

    ///  Loading SVG image form assets
    final svgImage = await rootBundle.loadString("assets/pdf_bg.svg");

    /// Converting PNG IMAGE TO BYTES
    final pngImage =
        (await rootBundle.load("assets/mountain.jpg")).buffer.asUint8List();
    final googleLogo =
        (await rootBundle.load("assets/google_icon.png")).buffer.asUint8List();


    ///  FULL SCREEN BACKGROUND
    final PageTheme pageTheme = PageTheme(
        pageFormat: PdfPageFormat.a4,
        buildBackground: (context) =>
            FullPage(ignoreMargins: true, child: Image(MemoryImage(pngImage),fit: BoxFit.cover, )));

    /// Adding SVG IMAGE
    pdf.addPage(
      MultiPage(
          build: (context) => [
                SvgImage(svg: svgImage),
              ]),
    );

    /// ADD PNG IMAGE
    pdf.addPage(MultiPage(build: (context) => [Image(MemoryImage(pngImage))]));

    /// GRID OF IMAGES
    pdf.addPage(Page(build: (context) {
      return GridView(
          crossAxisCount: 3,
          childAspectRatio: 1,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          children: [
            Image(MemoryImage(googleLogo)),
            Image(MemoryImage(googleLogo)),
            Image(MemoryImage(googleLogo)),
            Image(MemoryImage(googleLogo)),
            Image(MemoryImage(googleLogo)),
            Image(MemoryImage(googleLogo)),
          ]);
    }));

    /// FULL SCREEN BACKGROUND IMAGE PAGE
    pdf.addPage(Page(
        pageTheme: pageTheme,
        build: (context) => Center(
                child: Text(
              "Mountains",
            ))));


    /// HALF SCREEN BACKGROUND IMAGE

    pdf.addPage(
      MultiPage(build: (context){

        return [

        ];


      })


    );
    return PdfApi.saveDocument(name: "Image.pdf", pdf: pdf);
  }
}
