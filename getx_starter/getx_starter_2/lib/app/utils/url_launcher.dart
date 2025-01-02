import 'package:url_launcher/url_launcher.dart';

Future<void> launchMyURL(String url) async {
  final Uri uri = Uri.parse(url); // Parse the URL string into a Uri object
  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication, // Opens in an external browser
    );
  } else {
    throw 'Could not launch $url';
  }
}
