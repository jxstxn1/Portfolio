import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'animated_counter.dart';
import 'highlight.dart';

class HighLightBar extends StatelessWidget {
  const HighLightBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Padding(
              padding: const EdgeInsets.only(right: defaultPadding / 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HighLight(
                        counter: AnimatedCounter(
                          percentage: 16,
                          text: "+",
                          waitingTime: 800,
                        ),
                        label: "Github Projects",
                      ),
                      HighLight(
                        counter: AnimatedCounter(
                          percentage: 3,
                          text: "+",
                          waitingTime: 1000,
                        ),
                        label: "Years Experience",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HighLight(
                        counter: AnimatedCounter(
                          percentage: 15,
                          text: "+",
                          waitingTime: 1200,
                        ),
                        label: "Stars",
                      ),
                      HighLight(
                        counter: AnimatedCounter(
                          percentage: 8,
                          text: "+",
                          waitingTime: 1400,
                        ),
                        label: "Cooperations",
                      ),
                    ],
                  )
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(right: defaultPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HighLight(
                    counter: AnimatedCounter(
                      percentage: 16,
                      text: "+",
                      waitingTime: 800,
                    ),
                    label: "Github Projects",
                  ),
                  HighLight(
                    counter: AnimatedCounter(
                      percentage: 3,
                      text: "+",
                      waitingTime: 1000,
                    ),
                    label: "Years Experience",
                  ),
                  HighLight(
                    counter: AnimatedCounter(
                      percentage: 15,
                      text: "+",
                      waitingTime: 1200,
                    ),
                    label: "Stars",
                  ),
                  HighLight(
                    counter: AnimatedCounter(
                      percentage: 8,
                      text: "+",
                      waitingTime: 1400,
                    ),
                    label: "Cooperations",
                  ),
                ],
              ),
            ),
    );
  }
}
