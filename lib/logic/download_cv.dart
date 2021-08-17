import 'package:justins_portfolio/links.dart';
import 'package:url_launcher/url_launcher.dart';

void downloadCV() async => await canLaunch(cv_link)
    ? await launch(cv_link)
    : throw 'Could not launch $cv_link';
