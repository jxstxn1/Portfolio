import 'package:flutter/material.dart';
import 'package:justins_portfolio/models/Recommendation.dart';
import 'package:justins_portfolio/screens/home/components/recommendation_card.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          if (Responsive.isMobile(context))
            Text(
              "You can scroll me horizontal :)",
              style: TextStyle(height: 1.5),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    recommendation: demo_recommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
