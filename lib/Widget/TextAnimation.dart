import 'package:api_practise1/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class TextAnimation extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  const TextAnimation({
    super.key, required this.text, required this.fontsize, required this.fontWeight, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextAnimator(
      text,
      style: TextStyle(
        color: color,
          fontSize: fontsize.sp,fontWeight: fontWeight, decoration: TextDecoration.none),
      incomingEffect:
      WidgetTransitionEffects.incomingSlideInFromBottom(
          curve: Curves.ease,
          duration: const Duration(milliseconds: 1000)),
      outgoingEffect:
      WidgetTransitionEffects.outgoingSlideOutToRight(),
    );
  }
}