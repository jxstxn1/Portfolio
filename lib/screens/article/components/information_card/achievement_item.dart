import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AchievementItem extends StatelessWidget {
  const AchievementItem({Key? key, required this.achievement})
      : super(key: key);

  final String? achievement;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "•",
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: primaryColor),
        ),
        SizedBox(width: defaultPadding / 2),
        Text(
          achievement!,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
