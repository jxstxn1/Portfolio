import 'package:flutter/material.dart';
import 'package:justins_portfolio/constants.dart';
import 'package:justins_portfolio/screens/article/components/information_card/achievement_item.dart';
import 'package:justins_portfolio/screens/article/components/information_card/layout.dart';

class BackSide extends StatelessWidget {
  const BackSide(
      {Key? key, this.text, this.achievements, required this.isAchievement})
      : super(key: key);

  final String? text;
  final List<String>? achievements;
  final bool? isAchievement;

  @override
  Widget build(BuildContext context) {
    return CardLayout(
      key: ValueKey(false),
      child: Padding(
        padding: EdgeInsets.all(defaultPadding / 2),
        child: isAchievement!
            ? ListView.builder(
                itemCount: achievements?.length,
                itemBuilder: (context, index) =>
                    AchievementItem(achievement: achievements![index]),
              )
            : SingleChildScrollView(
                child: Container(
                  child: Center(
                    child: Text(
                      text!,
                      textAlign: TextAlign.left,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.white, height: 1.5),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
