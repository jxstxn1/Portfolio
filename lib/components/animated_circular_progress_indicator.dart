import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatefulWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.skill,
    required this.waitingTime,
  }) : super(key: key);
  final double? percentage;
  final String? skill;
  final int? waitingTime;

  @override
  _AnimatedCircularProgressIndicatorState createState() =>
      _AnimatedCircularProgressIndicatorState();
}

class _AnimatedCircularProgressIndicatorState
    extends State<AnimatedCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late Animation<double> animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: defaultDuration,
    );
    animation = Tween<double>(begin: 0, end: widget.percentage)
        .animate(_animationController)
          ..addListener(() {
            setState(() {});
          });
    _playAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _playAnimation() async {
    try {
      await Future.delayed(Duration(milliseconds: widget.waitingTime!));
      await _animationController.forward();
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: animation.value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (animation.value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
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
