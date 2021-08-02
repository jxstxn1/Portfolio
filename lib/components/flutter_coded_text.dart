import 'package:flutter/material.dart';

import '../constants.dart';

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
    this.last = false,
    this.text = "",
  }) : super(key: key);

  final bool last;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: last
                ? text != ""
                    ? "/$text"
                    : "/flutter"
                : text != ""
                    ? text
                    : "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}
