import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedLinearProgressIndicator extends StatefulWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.text,
    required this.waitingTime,
  }) : super(key: key);

  final double? percentage;
  final String? text;
  final int? waitingTime;

  @override
  _AnimatedLinearProgressIndicatorState createState() =>
      _AnimatedLinearProgressIndicatorState();
}

class _AnimatedLinearProgressIndicatorState
    extends State<AnimatedLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
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
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text!,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                (animation.value * 100).toInt().toString() + "%",
              ),
            ],
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          LinearProgressIndicator(
            value: animation.value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ],
      ),
    );
  }
}
