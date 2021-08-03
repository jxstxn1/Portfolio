import 'package:flutter/material.dart';
import 'package:flutter_profile/models/image.dart';
import 'package:flutter_profile/screens/article/components/image_view_with_text.dart';

import '../../../constants.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({Key? key, required this.images}) : super(key: key);

  final List<ImageData>? images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
