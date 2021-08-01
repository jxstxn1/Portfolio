import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import 'animated_text_part.dart';
import 'flutter_coded_text.dart';

class IBuildAnimatedText extends StatelessWidget {
  const IBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedTextPart())
              : AnimatedTextPart(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}
