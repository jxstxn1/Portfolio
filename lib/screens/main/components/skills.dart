import 'package:flutter/material.dart';
import 'package:justins_portfolio/components/animated_circular_progress_indicator.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            AnimatedCircularProgressIndicator(
              percentage: 0.91,
              skill: "Flutter",
              waitingTime: 200,
            ),
            SizedBox(
              width: defaultPadding,
            ),
            AnimatedCircularProgressIndicator(
              percentage: 0.70,
              skill: "Github",
              waitingTime: 400,
            ),
            SizedBox(
              width: defaultPadding,
            ),
            AnimatedCircularProgressIndicator(
              percentage: 0.55,
              skill: "Firebase",
              waitingTime: 600,
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
