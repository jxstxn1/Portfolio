import 'package:flutter/material.dart';
import 'package:justins_portfolio/constants.dart';

class CardLayout extends StatelessWidget {
  const CardLayout({required Key? key, required this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Container(
        key: key,
        decoration: BoxDecoration(
          color: secondaryColor,
        ),
        child: child,
      ),
    );
  }
}
