import 'package:flutter/material.dart';

import '../../../constants.dart';

class AnimatedCounter extends StatefulWidget {
  const AnimatedCounter({
    Key? key,
    required this.percentage,
    required this.text,
    required this.waitingTime,
  }) : super(key: key);

  final int? percentage;
  final int? waitingTime;
  final String? text;

  @override
  _AnimatedCounterState createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late Animation<int> animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: defaultDuration,
    );
    animation =
        IntTween(begin: 0, end: widget.percentage).animate(_animationController)
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
    return Text(
      "${animation.value}${widget.text}",
      style:
          Theme.of(context).textTheme.headline6!.copyWith(color: primaryColor),
    );
  }
}
