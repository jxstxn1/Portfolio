import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/image.dart';

class ImageViewWithText extends StatelessWidget {
  const ImageViewWithText({Key? key, required this.image}) : super(key: key);

  final ImageData? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 700,
      child: Column(
        children: [
          Container(
            height: 600,
            child: Image.asset(
              image!.imageSource!,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              height: 100,
              color: secondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: SingleChildScrollView(
                  child: Text(
                    image!.description!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
