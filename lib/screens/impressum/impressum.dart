import 'package:flutter/material.dart';
import 'package:flutter_profile/components/info_text.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class Impressum extends StatelessWidget {
  const Impressum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Impressum",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white)
                    : Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
              ),
              SizedBox(height: defaultPadding),
              InfoText(
                title: "Name                                           ",
                text: "Justin Baumann",
                isImpressum: true,
              ),
              InfoText(
                title: "Residence    ",
                text: "Rosenstraße 3/1, 88299 Leutkirch",
                isImpressum: true,
              ),
              InfoText(
                title: "Contact                    ",
                text: "justin.baumann@t-online.de",
                isImpressum: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
