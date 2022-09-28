import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

Future<bool> openUrl(String url, {bool newWindow = false}) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    return await launchUrl(uri);
  } else {
    debugPrint("Could not launch $url");
    return false;
  }
}
