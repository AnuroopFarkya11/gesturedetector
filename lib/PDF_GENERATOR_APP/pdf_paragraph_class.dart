import 'dart:io';
import 'package:flutter/material.dart' as fw;
import 'package:gesturedetector/PDF_GENERATOR_APP/pdf_class.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}

class ParagraphPdfApi {
  static Future<File> generate() async {
    final font = await PdfGoogleFonts.poppinsBlack();

    final pdf = Document();
    pdf.addPage(MultiPage(
        build: (context) => <Widget>[
              builtCustomHeaderWithLogo(),
              builtCustomHeader(),
              builtLink(),
              SizedBox(height: 1 * PdfPageFormat.cm),
              ...builtBulletPoints(),
              Header(child: Text("Header")),
              Paragraph(text: LoremText().paragraph(60)),
              builtTable(),

            ],
        footer: (context) {
          final text = 'Page ${context.pageNumber} of ${context.pagesCount}';

          return Container(
              alignment: Alignment.centerRight,
              child: Text(text, style: TextStyle(font: font)));
        }));
    return PdfApi.saveDocument(name: "Paragraph_Pdf.pdf", pdf: pdf);
  }

  static List<Widget> builtBulletPoints() => [
        Bullet(text: "First Bullet Point"),
        Bullet(text: "Second Bullet Point"),
        Bullet(text: "Third Bullet Point"),
      ];

  static Widget builtLink() => UrlLink(
      child: Text("Go to google!",
          style: TextStyle(
              color: PdfColors.blue, decoration: TextDecoration.underline)),
      destination: "www.google.in");

  static Widget builtCustomHeader() => Header(
      child: Text("Head Line", style: TextStyle(fontSize: 40)),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(color: PdfColors.amber100));

  static Widget builtCustomHeaderWithLogo() => Header(
          child: Row(children: [
        PdfLogo(),
        SizedBox(width: 0.5 * PdfPageFormat.cm),
        Text("Logo Header",
            style: TextStyle(
                fontSize: 1 * PdfPageFormat.cm, fontWeight: FontWeight.bold))
      ]));

  static Widget builtTable() {
    final users = [
      User(name: "Krishna Farkya", age: 52),
      User(name: "Jyoti Farkya", age: 50),
      User(name: "Pulkit Farkya", age: 28),
      User(name: "Anuroop Farkya", age: 21),
    ];
    final data = users.map((user) => [user.name, user.age]).toList();

    return TableHelper.fromTextArray(

      headers: ["Name", "Age"],
      data: data,
    );
  }
  static Widget builtTable2(){
    return Table(
      border: TableBorder.all(),
      children: [

      ],
    );
  }
}
