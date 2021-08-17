import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextPart extends StatelessWidget {
  const AnimatedTextPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive Web, Mobile and Desktop Apps",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Apps with custom backend API",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Apps connected with Internet of Things Device",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
