import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: SafeArea(
          child: Center(
            child: Container(
              height: 20,
              color: Colors.grey,
            ),
          ),
        ),
        baseColor: Colors.grey[400]!,
        highlightColor: Colors.grey[100]!);
  }
}
