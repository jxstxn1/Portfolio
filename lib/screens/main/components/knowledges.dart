import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Domain Driven Design"),
        KnowledgeText(text: "Firebase, APIs"),
        KnowledgeText(text: "Git knowledge"),
        KnowledgeText(text: "read UML Diagrams"),
        KnowledgeText(text: "Internet of Things"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: defaultPadding / 2, right: defaultPadding / 8),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/check.svg",
            color: primaryColor,
          ),
          SizedBox(width: defaultPadding / 2),
          Text(text!),
        ],
      ),
    );
  }
}
