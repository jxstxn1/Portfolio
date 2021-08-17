import 'package:flutter/material.dart';
import 'package:justins_portfolio/models/image.dart';
import 'package:justins_portfolio/screens/article/components/image_view_with_text.dart';

import '../../../constants.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({Key? key, required this.images}) : super(key: key);

  final List<ImageData>? images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: defaultPadding),
          Text(
            "Images",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding / 2),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                images!.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: ImageViewWithText(image: images![index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
