import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/article/components/information_card/layout.dart';

class FrontSide extends StatelessWidget {
  const FrontSide({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return CardLayout(
      key: ValueKey(true),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title!,
                textAlign: TextAlign.center,
                style: Responsive.isTablet(context)
                    ? Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white)
                    : Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
              ),
              SizedBox(height: defaultPadding),
              Text(
                "<< Click me >>",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: primaryColor),
              ),
              SizedBox(
                height: defaultPadding / 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
