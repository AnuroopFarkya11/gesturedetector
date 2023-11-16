import 'package:flutter/animation.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gesturedetector/Animations/animationCard.dart';
import 'package:gesturedetector/Animations/styledText.dart';

makeSlideEffect({required String text}){
  return AnimationCard(child: Animate(
    effects: [
      SlideEffect(
          begin: Offset(1, 0),
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeIn)
    ],
    onPlay: (controller) => controller.repeat(),
    child: StyledText(
      text: text.isEmpty?"Slide Effect":text,
    ),
  ));
}
/*Animate(
                  effects: [
                    SlideEffect(
                        begin: Offset(1, 0),
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeIn)
                  ],
                  onPlay: (controller) => controller.repeat(),
                  child: StyledText(
                    text: text.isEmpty?"Slide Effect":text,
                  ),
                )*/