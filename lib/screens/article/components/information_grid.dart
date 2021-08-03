import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/screens/article/components/information_card.dart';

import '../../../constants.dart';

class InformationGrid extends StatelessWidget {
  InformationGrid({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    required this.project,
  }) : super(key: key);

  final Project? project;
  final int? crossAxisCount;
  final double? childAspectRatio;
  String title = "", text = "";
  List<String> achievements = [];
  bool isAchievement = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount!,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding / 2,
          childAspectRatio: childAspectRatio!,
        ),
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return InformationCard(
                title: "Reason for beginning",
                text: project!.startReason!,
              );
            case 1:
              return InformationCard(
                title: "Achievements",
                achievements: project!.achievements!,
                isAchievement: true,
              );
            case 2:
              return InformationCard(
                title: "Resume",
                text: project!.resume!,
              );
            default:
              return InformationCard(
                  title: "Something went wrong", text: "An Error occured");
          }
        },
      ),
    );
  }
}
