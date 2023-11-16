import 'dart:developer';
import 'dart:io';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfApi {
  static Future<File> generateCentredText(String text) async {
    log("called");
    var pdf;
    try {
      final font = await PdfGoogleFonts.poppinsBold();
      pdf = Document();

      pdf.addPage(pw.Page(build: (pw.Context context) {
        return pw.Center(
            child: pw.Text(text, style: TextStyle(font: font, fontSize: 40)));
      }));
    } on Exception catch (e) {
      log(e.toString());
    }
    return saveDocument(name: "Test.pdf", pdf: pdf);
  }

  static Future<File> saveDocument(
      {required String name, required Document pdf}) async {
    log("Saving called");
    var file;

    try {
      final bytes = await pdf.save();

      final dir = await getApplicationDocumentsDirectory();

      file = File("${dir.path}/$name");

      await file.writeAsBytes(bytes);
    } on Exception catch (e) {
      log(name: "Save", e.toString());
    }

    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;
    log("Opeing file");
    try {
      await OpenFilex.open(url);
    } on Exception catch (e) {
      log(name: "Open File", e.toString());
    }
  }
}
/*
    * pdf.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Center(
        child: pw.Text('Hello World!'),
      ),
    ),
  );*/
