import 'package:flutter/material.dart';
import 'package:justins_portfolio/constants.dart';
import 'package:justins_portfolio/responsive.dart';
import 'package:justins_portfolio/screens/home/components/highlight_bar.dart';
import 'package:justins_portfolio/screens/home/components/homebanner.dart';
import 'package:justins_portfolio/screens/home/components/my_projects.dart';
import 'package:justins_portfolio/screens/home/components/recommendation_bar.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void _scrolldown() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: defaultDuration, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (ctx) => IconButton(
                  onPressed: () {
                    Scaffold.of(ctx).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              if (Responsive.isDesktop(context))
                SizedBox(
                  width: defaultPadding,
                ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      HomeBanner(
                        function: _scrolldown,
                      ),
                      HighLightBar(),
                      Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: MyProjects(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: Recommendations(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
