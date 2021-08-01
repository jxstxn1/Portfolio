import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_circular_progress_indicator.dart';

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
              percent: 0.78,
              skill: "Flutter",
            ),
            SizedBox(
              width: defaultPadding,
            ),
            AnimatedCircularProgressIndicator(
              percent: 0.70,
              skill: "Github",
            ),
            SizedBox(
              width: defaultPadding,
            ),
            AnimatedCircularProgressIndicator(
              percent: 0.55,
              skill: "Firebase",
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
