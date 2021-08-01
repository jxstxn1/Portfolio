import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'area_info.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'more_information.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfo(),
                    Skills(),
                    Coding(),
                    Knowledges(),
                    MoreInformation(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
