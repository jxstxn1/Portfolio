import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/article/components/information_card.dart';

import '../../../constants.dart';

class InformationGrid extends StatelessWidget {
  const InformationGrid({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int? crossAxisCount;
  final double? childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount!,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio!,
        ),
        itemBuilder: (context, index) => InformationCard());
  }
}
