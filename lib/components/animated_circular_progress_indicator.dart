import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatefulWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    this.percent,
    this.skill,
  }) : super(key: key);
  final double? percent;
  final String? skill;

  @override
  _AnimatedCircularProgressIndicatorState createState() =>
      _AnimatedCircularProgressIndicatorState();
}

class _AnimatedCircularProgressIndicatorState
    extends State<AnimatedCircularProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: widget.percent!),
              duration: defaultDuration,
              builder: (context, double value, child) => Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      (value * 100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          Text(
            widget.skill!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
