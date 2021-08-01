import 'package:flutter/material.dart';

import 'area_info_text.dart';

class AreaInfo extends StatelessWidget {
  const AreaInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AreaInfoText(
          title: "Residence",
          text: "Germany",
        ),
        AreaInfoText(
          title: "Location",
          text: "Leutkirch",
        ),
        AreaInfoText(
          title: "Age",
          text: "19",
        ),
      ],
    );
  }
}
