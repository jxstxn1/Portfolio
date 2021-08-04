import 'dart:math';

import 'package:flutter/material.dart';
import 'package:justins_portfolio/components/flutter_coded_text.dart';
import 'package:justins_portfolio/models/Project.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class BannerWithTitle extends StatelessWidget {
  BannerWithTitle({
    Key? key,
    required this.project,
    required this.function,
  }) : super(key: key);

  final Random random = new Random();
  final Project? project;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg${random.nextInt(5)}.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  child: Row(
                    children: [
                      FlutterCodedText(text: project!.language!),
                      Text(" " + project!.title! + " "),
                      FlutterCodedText(
                        text: project!.language!,
                        last: true,
                      )
                    ],
                  ),
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                Responsive.isMobile(context)
                    ? ElevatedButton(
                        onPressed: () {
                          function();
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding,
                            ),
                            backgroundColor: primaryColor),
                        child: Text(
                          "READ NOW!",
                          style: TextStyle(
                            color: darkColor,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
