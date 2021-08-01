import 'package:flutter/material.dart';

import '../../../components/info_text.dart';

class AreaInfo extends StatelessWidget {
  const AreaInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoText(
          title: "Residence",
          text: "Germany",
        ),
        InfoText(
          title: "Location",
          text: "Leutkirch",
        ),
        InfoText(
          title: "Age",
          text: "19",
        ),
      ],
    );
  }
}
