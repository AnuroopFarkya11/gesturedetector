import 'dart:ui';

import 'package:flutter/material.dart';


class Try extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.blue.withOpacity(0.3),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              color: Colors.white.withOpacity(0.05),
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned.fill(
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [Colors.yellow, Colors.transparent, Colors.blue],
                    stops: [0.0, 0.5, 1.0],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Container(
                  color: Colors.transparent,
                ),
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
