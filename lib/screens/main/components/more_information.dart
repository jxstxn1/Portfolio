import 'package:flutter/material.dart';
import 'package:flutter_profile/logic/openInNewTab.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class MoreInformation extends StatelessWidget {
  const MoreInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        SizedBox(height: defaultPadding / 2),
        TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Row(
              children: [
                Text(
                  "Download CV",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                SvgPicture.asset("assets/icons/download.svg"),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: Color(0xFF24242E),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {
                  openInANewTab(
                      "https://www.linkedin.com/in/justin-baumann-4066161b8/",
                      "LinkedIn");
                },
                icon: SvgPicture.asset(
                  "assets/icons/linkedin.svg",
                ),
              ),
              IconButton(
                onPressed: () {
                  openInANewTab("https://github.com/jxstxn1", "GitHub");
                },
                icon: SvgPicture.asset(
                  "assets/icons/github.svg",
                ),
              ),
              IconButton(
                onPressed: () {
                  openInANewTab(
                      "https://www.instagram.com/jxstxn.__/", "Instagram");
                },
                icon: SvgPicture.asset(
                  "assets/icons/instagram.svg",
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
