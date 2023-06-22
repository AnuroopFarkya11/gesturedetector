import 'dart:ui';

import 'package:flutter/material.dart';


class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/background_image.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Add your sign-in form elements here
                ],
              ),
            ),
          ],
        ),
      );
  }
}
