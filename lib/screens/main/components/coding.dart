import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_linear_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding,
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.82,
          text: "Dart",
          waitingTime: 1600,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.40,
          text: "NodeJS",
          waitingTime: 1800,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.40,
          text: "Java",
          waitingTime: 2000,
        ),
      ],
    );
  }
}
