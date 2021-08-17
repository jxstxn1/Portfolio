import 'package:flutter/material.dart';

import '../constants.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    this.title,
    this.text,
    this.isImpressum = false,
  }) : super(key: key);

  final String? title, text;
  final bool isImpressum;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        mainAxisAlignment: isImpressum
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          SelectableText(text!)
        ],
      ),
    );
  }
}
