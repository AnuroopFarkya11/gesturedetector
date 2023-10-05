import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class QrScreen extends StatelessWidget {
  final String data;
  const QrScreen({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            QrImageView(data: data)
          ],

        ),
      )
    );
  }
}
