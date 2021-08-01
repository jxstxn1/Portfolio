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
                          value: 16,
                          text: "+",
                        ),
                        label: "Github Projects",
                      ),
                      HighLight(
                        counter: AnimatedCounter(
                          value: 3,
                          text: "+",
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
                          value: 15,
                          text: "+",
                        ),
                        label: "Stars",
                      ),
                      HighLight(
                        counter: AnimatedCounter(
                          value: 8,
                          text: "+",
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
                      value: 16,
                      text: "+",
                    ),
                    label: "Github Projects",
                  ),
                  HighLight(
                    counter: AnimatedCounter(
                      value: 3,
                      text: "+",
                    ),
                    label: "Years Experience",
                  ),
                  HighLight(
                    counter: AnimatedCounter(
                      value: 15,
                      text: "+",
                    ),
                    label: "Stars",
                  ),
                  HighLight(
                    counter: AnimatedCounter(
                      value: 8,
                      text: "+",
                    ),
                    label: "Cooperations",
                  ),
                ],
              ),
            ),
    );
  }
}
