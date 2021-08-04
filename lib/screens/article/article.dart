import 'package:flutter/material.dart';
import 'package:justins_portfolio/models/Project.dart';
import 'package:justins_portfolio/screens/article/components/image_view_with_text.dart';
import 'package:justins_portfolio/screens/article/components/image_row.dart';
import 'package:justins_portfolio/screens/article/components/information_grid.dart';
import 'package:justins_portfolio/screens/home/home_screen.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/banner_with_title.dart';

class Article extends StatefulWidget {
  const Article({Key? key, required this.project}) : super(key: key);

  final Project? project;

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BannerWithTitle(
                  project: widget.project,
                  function: _scrolldown,
                ),
                SizedBox(height: defaultPadding),
                Container(
                  width: MediaQuery.of(context).size.width - defaultPadding,
                  child: Responsive(
                    mobile: InformationGrid(
                      crossAxisCount: 1,
                      childAspectRatio: 1.7,
                      project: widget.project,
                    ),
                    mobileLarge: InformationGrid(
                      crossAxisCount: 2,
                      project: widget.project,
                    ),
                    tablet: InformationGrid(
                      childAspectRatio: 1.1,
                      project: widget.project,
                    ),
                    desktop: InformationGrid(
                      project: widget.project,
                    ),
                  ),
                ),
                widget.project!.images != null || widget.project!.images != []
                    ? ImageRow(images: widget.project!.images)
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
