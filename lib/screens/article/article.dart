import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/screens/home/home_screen.dart';

import '../../constants.dart';
import 'components/banner_with_title.dart';

class Article extends StatefulWidget {
  const Article({Key? key, required this.project}) : super(key: key);

  final Project? project;

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  static ScrollController _scrollController = ScrollController();

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
                  function: _scrollDown,
                ),
                SizedBox(height: defaultPadding),
                Container(
                  width: MediaQuery.of(context).size.width - defaultPadding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _scrollDown() {
    _scrollController.animateTo(
        (_scrollController.position.maxScrollExtent) / 2,
        duration: defaultDuration,
        curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
