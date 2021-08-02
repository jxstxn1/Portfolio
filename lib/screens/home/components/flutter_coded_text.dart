import 'package:flutter/material.dart';

import '../../../constants.dart';

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
    this.last = false,
  }) : super(key: key);

  final bool last;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: last ? "/flutter" : "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}
