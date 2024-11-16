
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:login/core/utils/app_styles.dart';

class CustomAnimatedTextKit extends StatelessWidget {
  const CustomAnimatedTextKit({super.key});

  @override

  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "دليلك الشامل في مكان واحد",
          
          speed: const Duration(milliseconds: 100),
          textAlign: TextAlign.center,
          textStyle: AppStyles.textStyle32.copyWith(
            fontFamily: "gilroy",
          ),
          
          ),
      ],
      totalRepeatCount: 1,

      );
  }
}