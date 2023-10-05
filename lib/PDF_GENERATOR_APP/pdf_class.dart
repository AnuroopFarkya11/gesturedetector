import 'dart:io';
import 'dart:js';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

class PdfApi {

  static Future<File> generateCentredText(String text) async {
    // Creating a pdf document
    final pdf = Document();

    pdf.addPage(Page(build: (context) {
      return Center(
          child: Text(
        "Jai shree Hanuman",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
      ));
    }));

    return saveDocument(name:"Test.pdf",pdf:pdf);
  }

  static Future<File> saveDocument({required String name, required Document pdf})async {

    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();

    final file = File("${dir.path}/$name");
    
    await file.writeAsBytes(bytes);

    return file;

  }
}
